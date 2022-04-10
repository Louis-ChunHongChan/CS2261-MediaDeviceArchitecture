#include <stdlib.h>
#include "mode0.h"
#include "game.h"
// #include "guyspritesheet.h"
#include "spritesheet.h"
#include "title.h"
#include "collisionmap.h"
#include "laddercollisionmap.h"

#define CRAZYCOUNT 2
#define HEARTCOUNT 3
#define SCOREDIGIT 2

// variables
int life;
int delivered;
int hOff;
int vOff;
int gravity;

int jumping;
int down;
int climbing;
int powerUp, jumpBoosted, floating;
int frame;
int score;
int jumpFrame, downFrame, hammerFrame, bootsFrame, bubbleFrame;

unsigned char * collisionMap = (unsigned char*) collisionmapBitmap;
unsigned char * laddercollisionMap = (unsigned char*) laddercollisionmapBitmap;

// States used for ANISPRITE
enum { LEFT, LEFTJUMP, RIGHT, RIGHTJUMP, CLIMB, LEFTDOWN, RIGHTDOWN, LOST, RIGHTHAMMER, LEFTHAMMER, IDLE };

ANISPRITE guy;
ANISPRITE kong;
ANISPRITE customer;
ANISPRITE hammer;
CRAZY crazy[CRAZYCOUNT];
UI heart[HEARTCOUNT];
UI scoreUI[2];
UI shirt, boots, key, door, bubble;


void initGame() {
    // initialize all the variables
    life = 2;
    delivered = 0;
    gravity = 10;
    jumping = 0;
    down = 0;
    climbing = 0;
    powerUp = 0;
    jumpBoosted = 0;
    frame = 0;
    score = 0;
    jumpFrame = 0;
    downFrame = 0;
    hammerFrame = 0;
    bootsFrame = 0;
    floating = 0;

    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;

    // Load the spritesheet Tiles and Pal into THEIR desired spaces in memory
    // DMANow(3, guyspritesheetPal, SPRITEPALETTE, guyspritesheetPalLen / 2);
	// DMANow(3, guyspritesheetTiles, &CHARBLOCK[4], guyspritesheetTilesLen / 2);

    DMANow(3, spritesheetPal, SPRITEPALETTE, spritesheetPalLen / 2);
	DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);

    // initialize all the functions
    initGuy();
    initDoor();
    initKey();
    initBoots();
    initHeart();
    initShirt();
    initCustomer();
    initBubble();
    initCrazy();
    // initKong();
    // initHammer();
    // initScore();

    // Hide all sprites with hideSprites()
    hideSprites();

    buttons = BUTTONS;

    // Place screen on map
    vOff = 96;
    hOff = 0;
}

void initGuy() {
    // Initialize guy and place in the middle of the screen in the world location chosen earlier
    guy.width = 16;
    guy.height = 16;
    guy.cdel = 1;
    guy.rdel = 1;
    guy.row = 200;
    guy.col = SCREENWIDTH / 2 - guy.width * 2;
    guy.aniCounter = 0;
    guy.curFrame = 0;
    guy.numFrames = 2;
    guy.aniState = RIGHT;
    guy.hasKey = 0;
}

void initDoor() {
    door.width = 16;
    door.height = 32;
    door.col = SCREENWIDTH / 2 + door.width * 3 - 5;
    door.row = 215;
    door.active = 1;
}

void initKey() {
    key.width = 16;
    key.height = 16;
    key.col = SCREENWIDTH / 2 - key.width * 6;
    key.row = 225;
    key.active = 1;
}

void initBoots() {
    boots.width = 16;
    boots.height = 16;
    boots.col = SCREENWIDTH / 2 - boots.width * 5;
    boots.row = 185;
    boots.active = 1;
}

void initShirt() {
    shirt.width = 16;
    shirt.height = 16;
    shirt.col = SCREENWIDTH / 2 + shirt.width * 7;
    shirt.row = 67;
    shirt.active = 1;
}

void initCustomer() {
    customer.width = 16;
    customer.height = 16;
    // customer.cdel = 0;
    // customer.rdel = 0;
    customer.row = 20;
    customer.col = SCREENWIDTH / 2 + customer.width * 5;
    // customer.aniCounter = 0;
    // customer.curFrame = 0;
    // customer.numFrames = 2;
    // customer.aniState = 0;
}

void initBubble() {
    bubble.width = 16;
    bubble.height = 16;
    bubble.col = SCREENWIDTH / 2 - bubble.width * 6;
    bubble.row = 40;
    bubble.active = 1;
}

// void initKong() {
//     kong.width = 64;
//     kong.height = 32;
//     kong.cdel = 0;
//     kong.rdel = 0;
//     kong.row = 170;
//     kong.col = SCREENWIDTH / 2 - kong.height * 3;
//     kong.aniCounter = 0;
//     kong.curFrame = 0;
//     kong.numFrames = 3;
//     kong.aniState = 0;
//     kong.collided = 0;
// }

void initCrazy() {
    // int shift = 0;
    for(int i = 0; i < CRAZYCOUNT; i++){
        crazy[i].width = 16;
        crazy[i].height = 16;
        crazy[i].cdel = 1;
        crazy[i].rdel = 1;
        if (i == 1) {
            crazy[i].row = 69;
            crazy[i].col = SCREENWIDTH / 2 + 52;
        }
        else {
            crazy[i].row = 79;
            crazy[i].col = SCREENWIDTH / 2 - 80;
        }
        // crazy[i].aniCounter = 0;
        // crazy[i].curFrame = 0;
        // crazy[i].numFrames = 2;
        // crazy[i].aniState = 1;
        crazy[i].climbed = 0;
        crazy[i].active = 1;
        // crazy[i].jumpedOver = 0;
    }
}

// void initHammer() {
//     hammer.width = 16;
//     hammer.height = 16;
//     hammer.cdel = 0;
//     hammer.rdel = 0;
//     hammer.row = 180;
//     hammer.col = SCREENWIDTH / 2 + customer.width * 7;
//     hammer.aniCounter = 0;
//     hammer.curFrame = 0;
//     hammer.numFrames = 0;
//     hammer.aniState = 0;
// }

void initHeart() {
    int shift = 0;
    for (int i = 0; i < HEARTCOUNT; i++) {
        heart[i].width = 16;
        heart[i].height = 16;
        heart[i].row = guy.row - 16;
        heart[i].col = guy.col - 16 + shift;
        heart[i].active = 1;
        shift += 16;
    }
}

// void initScore() {
//     int shift = 0;
//     for (int i = 0; i < SCOREDIGIT; i++) {
//         scoreUI[i].width = 8;
//         scoreUI[i].height = 8;
//         scoreUI[i].row = 130;
//         scoreUI[i].col = SCREENWIDTH/2 + shift;
//         scoreUI[i].active = 1;
//         shift += 8;
//     }
// }

void updateGame() {
    frame++;

    // voff for falling track
    if (vOff+1 < MAPHEIGHT - SCREENHEIGHT && (guy.row - vOff) > (SCREENHEIGHT / 2)) {
        vOff++;
    }
    if (vOff-1 >= 0 && (guy.row - vOff) <= (SCREENHEIGHT / 2)) {
        // Update background offset (aka move the screen) if the above is true
        vOff--;
    }

    // to delay other inputs and gravity when guy is jumping by calculating difference between current frame and start jumping frames
    if (jumping) {
        if (frame - jumpFrame == 25) {
            jumping = 0;
            gravity = 10;
        }
    }

    // if not climbing, then apply gravity to guy
    if (!climbing) {
        if (collisionCheck(collisionMap, MAPWIDTH, guy.col, guy.row, guy.width, guy.height, 0, gravity)) {
            guy.row += gravity;
        }
        if (gravity == 10) {
            if (collisionCheck(collisionMap, MAPWIDTH, guy.col, guy.row, guy.width, guy.height, 0, gravity/2)) {
                guy.row += gravity/2;
            }
        }
    }

    // prevent inputs when guy was knocked down by crazy or Donkey Kong and lock aniState
    if (down) {
        if (guy.aniState == LEFT || guy.prevAniState == LEFT) {
            guy.aniState = LEFTDOWN;
        }
        else {
            guy.aniState = RIGHTDOWN;
        }
        if (frame - downFrame == 20) {
            down = 0;
        }
    }

    // a short time interval is setted to prevent the player keep colliding with Donkey Kong
    // if kong.collided = 1, then collision between it and guy won't effect anything
    // if kong.collided = 0, then collision has effect
    if (frame - downFrame == 70) {
        if (kong.collided) {
            kong.collided = 0;
        }
    }

    // to deplete guy's hammer state after a certain time interval
    if (powerUp) {
        if (frame - hammerFrame == 150) {
            powerUp = 0;
            guy.aniState = LEFT;
        }
    }

    // boots power up finished after 150 frames
    if (jumpBoosted) {
        if (frame - bootsFrame == 100) {
            jumpBoosted = 0;
        }
    }

    // boots respawn
    if (!jumpBoosted) {
        if (frame - bootsFrame == 600) {
            boots.active = 1;
        }
    }

    // adjust
    if (floating) {
        gravity = -1;
        if (frame - bubbleFrame == 80) {
            floating = 0;
            gravity = 10;
        }
    }

    if (!floating) {
        if (frame - bubbleFrame == 600) {
            bubble.active = 1;
        }
    }

    // when guy is off ladder
    if (guy.row == 232 || collisionCheck(laddercollisionMap, MAPWIDTH, guy.col, guy.row, guy.width, guy.height, 0, -guy.rdel)) {
        climbing = 0;
    }

    updateGuy();
    updateDoor();
    updateKey();
    updateBoots();
    updateHeart();
    updateShirt();
    updateBubble();
    // updateKong();
    // updateCustomer();
    updateCrazy();
    
}

void updateGuy() {
    // Customer collision
    if (life > 0 && collision(guy.col, guy.row, guy.width, guy.height*2, customer.col, customer.row, customer.width, customer.height)) {
        score += 5;
        delivered = 1;
    }

    // Hammer collision
    // if (collision(guy.col, guy.row, guy.width, guy.height, hammer.col, hammer.row, hammer.width, hammer.height)) {
    //     powerUp = 1;
    //     hammerFrame = frame;
    //     hammer.col = 256;
    // }

    // Crazy collision
    for (int i = 0; i < CRAZYCOUNT; i++) {
        if (!powerUp) {
            // guy collided with barrels
            if (crazy[i].active && collision(guy.col, guy.row, guy.width/2, guy.height/2, crazy[i].col, crazy[i].row, crazy[i].width/2, crazy[i].height/2)) {
                life--;
                down = 1;
                downFrame = frame;
                crazy[i].active = 0;
            }

            // guy jumps over the barrels
            if (jumping && !down && !climbing && !crazy[i].jumpedOver) {
                if (guy.aniState == LEFTJUMP) {
                    if (guy.row < crazy[i].row && guy.col <= crazy[i].col) {
                        score += 3;
                        crazy[i].jumpedOver = 1;
                    }
                }
                else if (guy.aniState == RIGHTJUMP) {
                    if (guy.row < crazy[i].row && guy.col <= crazy[i].col) {
                        score += 1;
                        crazy[i].jumpedOver = 1;
                    }
                }
            }
        }
        // guy destroys barrels with hammer
        else {
            if (collision(guy.col, guy.row, guy.width, guy.height, crazy[i].col, crazy[i].row, crazy[i].width, crazy[i].height)) {
                crazy[i].active = 0;
                score += 1;
            }
        }
    }

    // guy to climb ladders
    if (!powerUp && !down && !jumping) {
        if(BUTTON_HELD(BUTTON_UP)) {
            if (!collisionCheck(laddercollisionMap, MAPWIDTH, guy.col, guy.row, guy.width, guy.height, 0, -guy.rdel)) {
                guy.row -= guy.rdel;
                climbing = 1;

                // Only move the screen if the character is in the proper spot AND the screen isn't already at the edge
                if (vOff-1 >= 0 && (guy.row - vOff) <= (SCREENHEIGHT / 2)) {
                    // Update background offset (aka move the screen) if the above is true
                    vOff--;
                }
            }
        }

        if(BUTTON_HELD(BUTTON_DOWN)) {
            if (!collisionCheck(laddercollisionMap, MAPWIDTH, guy.col, guy.row, guy.width, guy.height, 0, guy.rdel) && guy.row + guy.rdel <= 232) {
                guy.row += guy.rdel;
                climbing = 1;

                if (vOff+1 < MAPHEIGHT - SCREENHEIGHT && (guy.row - vOff) > (SCREENHEIGHT / 2)) {
                    vOff++;
                }
            }
        }
    }
    
    // guy move left or right
    if (!climbing && !jumping && !down) {
        if(BUTTON_HELD(BUTTON_LEFT)) {
            if (collisionCheck(collisionMap, MAPWIDTH, guy.col, guy.row, guy.width, guy.height, -guy.cdel, 0)
                && guy.col > 0) {
                guy.col -= guy.cdel;

                if (hOff-1 >= 0 && (guy.col - hOff) <= (SCREENWIDTH / 2)) {
                    hOff--;
                }
            }
        }

        if(BUTTON_HELD(BUTTON_RIGHT)) {
            if (collisionCheck(collisionMap, MAPWIDTH, guy.col, guy.row, guy.width, guy.height, guy.cdel, 0)
                    && guy.col + guy.width - 1 < MAPWIDTH) {
                guy.col += guy.cdel;

                if (hOff+1 < MAPWIDTH - SCREENWIDTH && (guy.col - hOff) > (SCREENWIDTH / 2)) {
                    hOff++;
                }
            }
        }
    }

    animateGuy();
}

void updateDoor() {
    if (guy.hasKey && collision(guy.col, guy.row, guy.width, guy.height, door.col, door.row, door.width, door.height)) {
        door.active = 0;
    }
    else if (!guy.hasKey && collision(guy.col, guy.row, guy.width, guy.height, door.col, door.row, door.width, door.height)) {
        guy.col -= 1;
    }
}

void updateKey() {
    if (!guy.hasKey && collision(guy.col, guy.row, guy.width, guy.height, key.col, key.row, key.width, key.height)) {
        key.active = 0;
        guy.hasKey = 1;
    }
}

void updateBoots() {
    if (boots.active && collision(guy.col, guy.row, guy.width, guy.height, boots.col, boots.row, boots.width, boots.height)) {
        boots.active = 0;
        bootsFrame = frame;
        jumpBoosted = 1;
    }
}

void updateShirt() {
    if (shirt.active && collision(guy.col, guy.row, guy.width, guy.height, shirt.col, shirt.row, shirt.width, shirt.height)) {
        shirt.active = 0;
        life++;
    }
}

void updateBubble() {
    if (bubble.active && collision(guy.col, guy.row, guy.width, guy.height, bubble.col, bubble.row, bubble.width, bubble.height)) {
        bubble.active = 0;
        bubbleFrame = frame;
        floating = 1;
    }
}

// void updateKong() {
//     animateKong();
// }

void updateCustomer() {
    animateCustomer();
}

void updateCrazy() {
    // time interval for barrels to active
    // if (frame % 150 == 0) {
    //     for (int i = 0; i < CRAZYCOUNT; i++) {
    //         if (!crazy[i].active) {
    //             crazy[i].active = 1;
    //             break;
    //         }
    //     }
    // }

    // barrels animation
    for (int i = 0; i < CRAZYCOUNT; i++) {
        if (!crazy[i].active) {
            crazy[i].row = 300;
            crazy[i].col = 300;
            // crazy[i].col = SCREENWIDTH / 2 - crazy[i].width * 3;
            // crazy[i].climbed = 0;
            // crazy[i].jumpedOver = 0;
        }
        else {
            if (crazy[i].active) {
                if (i == 0) {
                    if (collisionCheck(collisionMap, MAPWIDTH, crazy[i].col, crazy[i].row, crazy[i].width, crazy[i].height, crazy[i].cdel, 0)) {
                        // adjust
                        if (crazy[i].col >= SCREENWIDTH / 2 - 70) {
                            crazy[i].cdel = -1;
                            // crazy[i].col -= crazy[i].cdel;
                        }
                        if (crazy[i].col <= SCREENWIDTH / 2 - 95) {
                            crazy[i].cdel = 1;
                        }
                        crazy[i].col += crazy[i].cdel;
                    }
                }
                else {
                    if (collisionCheck(collisionMap, MAPWIDTH, crazy[i].col, crazy[i].row, crazy[i].width, crazy[i].height, crazy[i].cdel, 0)) {
                        if (crazy[i].col >= SCREENWIDTH / 2 + 110) {
                            crazy[i].cdel = -1;
                            // crazy[i].col -= crazy[i].cdel;
                        }
                        if (crazy[i].col <= SCREENWIDTH / 2 + 35) {
                            crazy[i].cdel = 1;
                        }
                        crazy[i].col += crazy[i].cdel;
                    }
                }
            }

            // barrels row down the ladder
            // if (!collisionCheck(laddercollisionMap, MAPWIDTH, crazy[i].col, crazy[i].row, crazy[i].width, crazy[i].height, 0, crazy[i].rdel)) {
            //     crazy[i].row -= crazy[i].rdel;
            //     crazy[i].climbed = 1;
            // }
            // else {
            //     if (crazy[i].climbed) {
            //         crazy[i].col -= crazy[i].cdel;
            //         if (crazy[i].col + crazy[i].width - 1 < 0) {
            //             crazy[i].active = 0;
            //         }
            //     }
            //     else {
            //         crazy[i].col += crazy[i].cdel;
            //     }
            // }
        }
    }


    animateCrazy();
}

void updateHeart() {
    // update (inactive) heart object pool based on life left
    for (int i = 0; i < life; i++) {
        heart[i].active = 1;
    }
    for (int i = 0; i < (HEARTCOUNT - life); i++) {
        if (heart[i].active) {
            heart[i].active = 0;
        }
    }
}

void animateGuy() {
    // Set previous state to current state
    guy.prevAniState = guy.aniState;
    guy.aniState = IDLE;

    if (powerUp) {
        if (BUTTON_HELD(BUTTON_RIGHT)) {
            guy.aniState = RIGHTHAMMER;
        }
        else {
            guy.aniState = LEFTHAMMER;
        }
    }

    // Change the animation frame every 15 frames of gameplay
    if(guy.aniCounter % 15 == 0) {
        guy.curFrame = (guy.curFrame + 1) % guy.numFrames;
    }

    // Control movement and change animation state
    if (!climbing && !down && !jumping) {
            if(BUTTON_HELD(BUTTON_LEFT) && !powerUp) {
                guy.aniState = LEFT;
            }
            if(BUTTON_HELD(BUTTON_RIGHT) && !powerUp) {
                guy.aniState = RIGHT;
            }
            if (!powerUp && !down && !jumping) {
                if (guy.aniState == LEFT && BUTTON_PRESSED(BUTTON_B)) {
                    guy.aniState = LEFTJUMP;
                    jumping = 1;
                    jumpFrame = frame;
                    if (collisionCheck(collisionMap, MAPWIDTH, guy.col, guy.row, guy.width, guy.height, -15, -15)) {
                        if (jumpBoosted) {
                            guy.row -= 75;
                            guy.col -= 25;
                            gravity = 0;
                        }
                        else {
                            guy.row -= 20;
                            guy.col -= 15;
                            gravity = 0;
                        }
                    }
                    
                }
                else if (guy.aniState == RIGHT && BUTTON_PRESSED(BUTTON_B)) {
                    guy.aniState = RIGHTJUMP;
                    jumping = 1;
                    jumpFrame = frame;
                    if (collisionCheck(collisionMap, MAPWIDTH, guy.col, guy.row, guy.width, guy.height, 15, -15)) {
                        if (jumpBoosted) {
                            guy.row -= 75;
                            guy.col += 25;
                            gravity = 0;
                        }
                        else {
                            guy.row -= 20;
                            guy.col += 15;
                            gravity = 0;
                        }
                    }
                }
            }
            
        }
        else if (!powerUp && !down && !jumping) {
            if(BUTTON_HELD(BUTTON_UP) || BUTTON_HELD(BUTTON_DOWN)) {
                guy.aniState = CLIMB;
            }
        }

    if (guy.aniState == IDLE) {
        guy.curFrame = 0;
        guy.aniCounter = 0;
        guy.aniState = guy.prevAniState;
    }
    else {
        guy.aniCounter++;
    }

}

// void animateKong() {
//     // Change the animation frame every 15 frames of gameplay
//     kong.aniCounter++;
//     if(kong.aniCounter % 50 == 0) {
//         kong.curFrame = (kong.curFrame + 1) % kong.numFrames;
//     }
// }

void animateCustomer() {
    // Change the animation frame every 15 frames of gameplay
    // customer.aniCounter++;

    // if(customer.aniCounter % 30 == 0) {
    //     customer.curFrame = (customer.curFrame + 1) % customer.numFrames;
    // }
}

void animateCrazy() {
    // for (int i = 0; i < BARRELCOUNT; i++) {
    //     crazy[i].aniCounter++;
    //     if (crazy[i].aniCounter % 15 == 0) {
    //         if (crazy[i].active) {
    //             crazy[i].curFrame = (crazy[i].curFrame + 1) % crazy[i].numFrames;
    //         }
    //     }
    // }
}

void drawGame() {
    drawGuy();
    drawDoor();
    drawKey();
    drawBoots();
    drawHeart();
    drawShirt();
    drawCustomer();
    drawBubble();
    drawCrazy();
    // drawKong();
    // drawHammer();
    // drawScore();
    // Waiting for VBlank
    waitForVBlank();

    // Copy the shadowOAM into the OAM:
    DMANow(3, shadowOAM, OAM, 128 * 4);

    // Updating BG1 hOff and vOff
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}

void drawGuy() {
    shadowOAM[0].attr0 = (guy.row - vOff) | ATTR0_SQUARE;
    shadowOAM[0].attr1 = (guy.col - hOff) | ATTR1_SMALL;
    shadowOAM[0].attr2 = ATTR2_TILEID(10, 0) | ATTR2_PALROW(0);
    // if (life == 0) {
    //     shadowOAM[0].attr0 = (guy.row - vOff) | ATTR0_SQUARE;
    //     shadowOAM[0].attr1 = (guy.col - hOff) | ATTR1_SMALL;
    //     shadowOAM[0].attr2 = ATTR2_TILEID(14, guy.curFrame * 2) | ATTR2_PALROW(0);
    // }
    // else if (guy.aniState == RIGHTHAMMER) {
    //     shadowOAM[0].attr0 = (guy.row - vOff) | ATTR0_WIDE;
    //     shadowOAM[0].attr1 = (guy.col - hOff) | ATTR1_MEDIUM;
    //     shadowOAM[0].attr2 = ATTR2_TILEID(16, guy.curFrame * 2) | ATTR2_PALROW(0);
    // }
    // else if (guy.aniState == LEFTHAMMER) {
    //     shadowOAM[0].attr0 = (guy.row - vOff) | ATTR0_WIDE;
    //     shadowOAM[0].attr1 = (guy.col - hOff) | ATTR1_MEDIUM;
    //     shadowOAM[0].attr2 = ATTR2_TILEID(20, guy.curFrame * 2) | ATTR2_PALROW(0);
    // }
    // else {
    //     shadowOAM[0].attr0 = (guy.row - vOff) | ATTR0_SQUARE;
    //     shadowOAM[0].attr1 = (guy.col - hOff) | ATTR1_SMALL;
    //     shadowOAM[0].attr2 = ATTR2_TILEID(guy.aniState * 2, guy.curFrame * 2) | ATTR2_PALROW(0);
    // }
}

void drawDoor() {
    if (door.active) {
        shadowOAM[15].attr0 = (door.row - vOff) | ATTR0_TALL;
        shadowOAM[15].attr1 = (door.col - hOff) | ATTR1_MEDIUM;
        shadowOAM[15].attr2 = ATTR2_TILEID(8, 0) | ATTR2_PALROW(0);
    }
    else {
        shadowOAM[15].attr0 = (door.row - vOff) | ATTR0_TALL;
        shadowOAM[15].attr1 = (door.col - hOff) | ATTR1_MEDIUM;
        shadowOAM[15].attr2 = ATTR2_TILEID(26, 0) | ATTR2_PALROW(0);
    }
}

void drawKey() {
    if (key.active) {
        shadowOAM[16].attr0 = (key.row - vOff) | ATTR0_SQUARE;
        shadowOAM[16].attr1 = (key.col - hOff) | ATTR1_SMALL;
        shadowOAM[16].attr2 = ATTR2_TILEID(6, 0) | ATTR2_PALROW(0);
    }
    else {
        shadowOAM[16].attr0 = (key.row - vOff) | ATTR0_SQUARE;
        shadowOAM[16].attr1 = (key.col - hOff) | ATTR1_SMALL;
        shadowOAM[16].attr2 = ATTR2_TILEID(26, 0) | ATTR2_PALROW(0);
    }
}

void drawBoots() {
    if (boots.active) {
        shadowOAM[17].attr0 = (boots.row - vOff) | ATTR0_SQUARE;
        shadowOAM[17].attr1 = (boots.col - hOff) | ATTR1_SMALL;
        shadowOAM[17].attr2 = ATTR2_TILEID(4, 0) | ATTR2_PALROW(0);
    }
    else {
        shadowOAM[17].attr0 = (boots.row - vOff) | ATTR0_SQUARE;
        shadowOAM[17].attr1 = (boots.col - hOff) | ATTR1_SMALL;
        shadowOAM[17].attr2 = ATTR2_TILEID(26, 0) | ATTR2_PALROW(0);
    }
}

void drawShirt() {
    if (shirt.active) {
        shadowOAM[18].attr0 = (shirt.row - vOff) | ATTR0_SQUARE;
        shadowOAM[18].attr1 = (shirt.col - hOff) | ATTR1_SMALL;
        shadowOAM[18].attr2 = ATTR2_TILEID(2, 0) | ATTR2_PALROW(0);
    }
    else {
        shadowOAM[18].attr0 = (shirt.row - vOff) | ATTR0_SQUARE;
        shadowOAM[18].attr1 = (shirt.col - hOff) | ATTR1_SMALL;
        shadowOAM[18].attr2 = ATTR2_TILEID(30, 0) | ATTR2_PALROW(0);
    }
}

void drawBubble() {
    if (bubble.active) {
        shadowOAM[19].attr0 = (bubble.row - vOff) | ATTR0_SQUARE;
        shadowOAM[19].attr1 = (bubble.col - hOff) | ATTR1_SMALL;
        shadowOAM[19].attr2 = ATTR2_TILEID(15, 0) | ATTR2_PALROW(0);
    }
    else {
        shadowOAM[19].attr0 = (bubble.row - vOff) | ATTR0_SQUARE;
        shadowOAM[19].attr1 = (bubble.col - hOff) | ATTR1_SMALL;
        shadowOAM[19].attr2 = ATTR2_TILEID(30, 0) | ATTR2_PALROW(0);
    }
}

// void drawKong() {
//     shadowOAM[1].attr0 = (kong.row - vOff) | ATTR0_WIDE;
//     shadowOAM[1].attr1 = (kong.col - hOff) | ATTR1_LARGE;
//     shadowOAM[1].attr2 = ATTR2_TILEID(0, kong.curFrame * 4 + 4) | ATTR2_PALROW(0);
// }

void drawCustomer() {
    shadowOAM[2].attr0 = (customer.row - vOff) | ATTR0_SQUARE;
    shadowOAM[2].attr1 = (customer.col - hOff) | ATTR1_SMALL;
    // customer.curFrame * 4
    shadowOAM[2].attr2 = ATTR2_TILEID(13, 0) | ATTR2_PALROW(0);
}

void drawCrazy() {
    for (int i = 0; i < CRAZYCOUNT; i++) {
        shadowOAM[3+i].attr0 = (crazy[i].row - vOff) | ATTR0_SQUARE;
        shadowOAM[3+i].attr1 = (crazy[i].col - hOff) | ATTR1_SMALL;
        // if (!collisionCheck(laddercollisionMap, MAPWIDTH, crazy[i].col, crazy[i].row, crazy[i].width, crazy[i].height, 0, crazy[i].rdel)) {
        //     shadowOAM[3+i].attr2 = ATTR2_TILEID(0, crazy[i].curFrame * 2 + 16) | ATTR2_PALROW(0);
        // }
        // else {
        //     shadowOAM[3+i].attr2 = ATTR2_TILEID(crazy[i].aniState * 2, crazy[i].curFrame * 2 + 16) | ATTR2_PALROW(0);
        // }
        shadowOAM[3+i].attr2 = ATTR2_TILEID(17, 0) | ATTR2_PALROW(0);
    }
}

// void drawHammer() {
//     shadowOAM[8].attr0 = (hammer.row - vOff) | ATTR0_SQUARE;
//     shadowOAM[8].attr1 = (hammer.col - hOff) | ATTR1_SMALL;
//     shadowOAM[8].attr2 = ATTR2_TILEID(26, 0) | ATTR2_PALROW(0);
// }

void drawHeart() {
    int shift = 0;
    for (int i = 0; i < HEARTCOUNT; i++) {
        if (heart[i].active) {
            shadowOAM[9+i].attr0 = (guy.row - 8 - vOff) | ATTR0_SQUARE;
            // 8 * HEARTCOUNT/2
            shadowOAM[9+i].attr1 = (guy.col - 8 + shift - hOff) | ATTR1_TINY;
            shadowOAM[9+i].attr2 = ATTR2_TILEID(12, 0) | ATTR2_PALROW(0);
        }
        else {
            shadowOAM[9+i].attr0 = (guy.row - 8 - vOff) | ATTR0_SQUARE;
            shadowOAM[9+i].attr1 = (guy.col - 8 + shift - hOff) | ATTR1_TINY;
            shadowOAM[9+i].attr2 = ATTR2_TILEID(30, 0) | ATTR2_PALROW(0);
        }
        shift += 8;
    }
}

// void drawScore() {
//     if (score < 10) {
//         shadowOAM[12].attr0 = (scoreUI[0].row - vOff) | ATTR0_SQUARE;
//         shadowOAM[12].attr1 = (scoreUI[0].col - hOff) | ATTR1_TINY;
//         shadowOAM[12].attr2 = ATTR2_TILEID(0, 20) | ATTR2_PALROW(0);
//         shadowOAM[13].attr0 = (scoreUI[1].row - vOff) | ATTR0_SQUARE;
//         shadowOAM[13].attr1 = (scoreUI[1].col - hOff) | ATTR1_TINY;
//         shadowOAM[13].attr2 = ATTR2_TILEID(0, score + 20) | ATTR2_PALROW(0);
//     }
//     else {
//         shadowOAM[12].attr0 = (scoreUI[0].row - vOff) | ATTR0_SQUARE;
//         shadowOAM[12].attr1 = (scoreUI[0].col - hOff) | ATTR1_TINY;
//         shadowOAM[12].attr2 = ATTR2_TILEID(0, (score/10%10) + 20) | ATTR2_PALROW(0);
//         shadowOAM[13].attr0 = (scoreUI[1].row - vOff) | ATTR0_SQUARE;
//         shadowOAM[13].attr1 = (scoreUI[1].col - hOff) | ATTR1_TINY;
//         shadowOAM[13].attr2 = ATTR2_TILEID(0, (score%10) + 20) | ATTR2_PALROW(0);
//     }
// }
