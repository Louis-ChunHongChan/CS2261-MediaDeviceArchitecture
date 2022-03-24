#include <stdlib.h>
#include "mode0.h"
#include "game.h"
#include "mariospritesheet.h"
#include "title.h"
#include "gameBg.h"
#include "collisionmap.h"
#include "collisionmap2.h"
#include "laddercollisionmap.h"
#include "laddercollisionmap2.h"

// variables
int life;
int rescued;
int hOff;
int vOff;
int gravity;

int jumping;
int down;
int climbing;
int powerUp;
int frame;
int score;
int jumpFrame;
int downFrame;
int hammerFrame;
int nextLevel;

unsigned char * collisionMap = (unsigned char*) collisionmapBitmap;
unsigned char * laddercollisionMap = (unsigned char*) laddercollisionmapBitmap;
unsigned char * collisionMap2 = (unsigned char*) collisionmap2Bitmap;
unsigned char * laddercollisionMap2 = (unsigned char*) laddercollisionmap2Bitmap;

// States used for ANISPRITE
enum { LEFT, LEFTJUMP, RIGHT, RIGHTJUMP, CLIMB, LEFTDOWN, RIGHTDOWN, LOST, RIGHTHAMMER, LEFTHAMMER, IDLE };

ANISPRITE mario;
ANISPRITE kong;
ANISPRITE pauline;
ANISPRITE hammer;
BARREL barrel[5];
UI heart[3];
UI scoreUI[2];
#define BARRELCOUNT 5
#define HEARTCOUNT 3
#define SCOREDIGIT 2

void initGame() {
    // initialize all the variables
    life = 3;
    rescued = 0;
    gravity = 10;
    jumping = 0;
    down = 0;
    climbing = 0;
    powerUp = 0;
    frame = 0;
    score = 0;
    jumpFrame = 0;
    downFrame = 0;
    hammerFrame = 0;
    nextLevel = 0;

    REG_BG1VOFF = vOff;
    REG_BG1HOFF = hOff;

    // Load the spritesheet Tiles and Pal into THEIR desired spaces in memory
    DMANow(3, mariospritesheetPal, SPRITEPALETTE, mariospritesheetPalLen / 2);
	DMANow(3, mariospritesheetTiles, &CHARBLOCK[4], mariospritesheetTilesLen / 2);

    // initialize all the functions
    initMario();
    initKong();
    initPauline();
    initBarrel();
    initHammer();
    initHeart();
    initScore();

    // Hide all sprites with hideSprites()
    hideSprites();

    buttons = BUTTONS;

    // Place screen on map
    vOff = 96;
    hOff = 0;
}

// initialization for level 2
void initGame2() {
    gravity = 10;
    jumping = 0;
    down = 0;
    climbing = 0;
    powerUp = 0;
    frame = 0;
    jumpFrame = 0;
    downFrame = 0;
    hammerFrame = 0;

    // Hide all sprites with hideSprites()
    hideSprites();

    initMario2();
    initKong2();
    initPauline2();
    initBarrel2();
    initHammer2();
    initHeart2();
    initScore2();

    buttons = BUTTONS;

    // Place screen on map
    vOff = 0;
    hOff = 0;
}

void initMario() {
    // Initialize Mario and place in the middle of the screen in the world location chosen earlier
    mario.width = 16;
    mario.height = 16;
    mario.cdel = 1;
    mario.rdel = 1;
    mario.row = 232;
    mario.col = SCREENWIDTH / 2 - mario.width * 2;
    mario.aniCounter = 0;
    mario.curFrame = 0;
    mario.numFrames = 2;
    mario.aniState = RIGHT;
}

void initMario2() {
    mario.width = 16;
    mario.height = 16;
    mario.cdel = 1;
    mario.rdel = 1;
    mario.row = 80;
    mario.col = 88;
    mario.aniCounter = 0;
    mario.curFrame = 0;
    mario.numFrames = 2;
    mario.aniState = RIGHT;
}

void initKong() {
    kong.width = 64;
    kong.height = 32;
    kong.cdel = 0;
    kong.rdel = 0;
    kong.row = 170;
    kong.col = SCREENWIDTH / 2 - kong.height * 3;
    kong.aniCounter = 0;
    kong.curFrame = 0;
    kong.numFrames = 3;
    kong.aniState = 0;
    kong.collided = 0;
}

void initKong2() {
    kong.width = 64;
    kong.height = 32;
    kong.cdel = 0;
    kong.rdel = 0;
    kong.row = 65;
    kong.col = SCREENWIDTH / 2 - kong.height * 3;
    kong.aniCounter = 0;
    kong.curFrame = 0;
    kong.numFrames = 3;
    kong.aniState = 0;
    kong.collided = 0;
}

void initPauline() {
    pauline.width = 16;
    pauline.height = 32;
    pauline.cdel = 0;
    pauline.rdel = 0;
    pauline.row = 175;
    pauline.col = SCREENWIDTH / 2 - pauline.width * 2;
    pauline.aniCounter = 0;
    pauline.curFrame = 0;
    pauline.numFrames = 2;
    pauline.aniState = 0;
}

void initPauline2() {
    pauline.width = 16;
    pauline.height = 32;
    pauline.cdel = 0;
    pauline.rdel = 0;
    pauline.row = 68;
    pauline.col = SCREENWIDTH / 2 + pauline.width * 7;
    pauline.aniCounter = 0;
    pauline.curFrame = 0;
    pauline.numFrames = 2;
    pauline.aniState = 0;
}

void initBarrel() {
    for(int i = 0; i < BARRELCOUNT; i++){
        barrel[i].width = 16;
        barrel[i].height = 16;
        barrel[i].cdel = 2;
        barrel[i].rdel = 2;
        // barrel[i].row = 188;
        // barrel[i].col = SCREENWIDTH / 2 - barrel[i].width * 3;
        barrel[i].aniCounter = 0;
        barrel[i].curFrame = 0;
        barrel[i].numFrames = 2;
        barrel[i].aniState = 1;
        barrel[i].dropped = 0;
        barrel[i].active = 0;
        barrel[i].jumpedOver = 0;
    }
}

void initBarrel2() {
    for(int i = 0; i < BARRELCOUNT; i++){
        barrel[i].width = 16;
        barrel[i].height = 16;
        barrel[i].cdel = 2;
        barrel[i].rdel = 2;
        // barrel[i].row = 83;
        // barrel[i].col = SCREENWIDTH / 2 - kong.height * 3;
        barrel[i].aniCounter = 0;
        barrel[i].curFrame = 0;
        barrel[i].numFrames = 2;
        barrel[i].aniState = 1;
        barrel[i].dropped = 0;
        barrel[i].active = 0;
        barrel[i].jumpedOver = 0;
    }
}

void initHammer() {
    hammer.width = 16;
    hammer.height = 16;
    hammer.cdel = 0;
    hammer.rdel = 0;
    hammer.row = 180;
    hammer.col = SCREENWIDTH / 2 + pauline.width * 7;
    hammer.aniCounter = 0;
    hammer.curFrame = 0;
    hammer.numFrames = 0;
    hammer.aniState = 0;
}

void initHammer2() {
    hammer.width = 16;
    hammer.height = 16;
    hammer.cdel = 0;
    hammer.rdel = 0;
    hammer.row = 110;
    hammer.col = SCREENWIDTH / 2;
    hammer.aniCounter = 0;
    hammer.curFrame = 0;
    hammer.numFrames = 0;
    hammer.aniState = 0;
}

void initHeart() {
    int shift = 0;
    for (int i = 0; i < HEARTCOUNT; i++) {
        heart[i].width = 16;
        heart[i].height = 16;
        heart[i].row = 140;
        heart[i].col = SCREENWIDTH / 2 - heart[i].width + shift;
        heart[i].active = 1;
        shift += 16;
    }
}

void initHeart2() {
    int shift = 0;
    for (int i = 0; i < HEARTCOUNT; i++) {
        heart[i].width = 16;
        heart[i].height = 16;
        heart[i].row = 60;
        heart[i].col = SCREENWIDTH / 2 - heart[i].width + shift;
        heart[i].active = 1;
        shift += 16;
    }
}

void initScore() {
    int shift = 0;
    for (int i = 0; i < SCOREDIGIT; i++) {
        scoreUI[i].width = 8;
        scoreUI[i].height = 8;
        scoreUI[i].row = 130;
        scoreUI[i].col = SCREENWIDTH/2 + shift;
        scoreUI[i].active = 1;
        shift += 8;
    }
}

void initScore2() {
    int shift = 0;
    for (int i = 0; i < SCOREDIGIT; i++) {
        scoreUI[i].width = 8;
        scoreUI[i].height = 8;
        scoreUI[i].row = 50;
        scoreUI[i].col = SCREENWIDTH/2 + shift;
        scoreUI[i].active = 1;
        shift += 8;
    }
}

void updateGame() {
    frame++;

    // to delay other inputs and gravity when mario is jumping by calculating difference between current frame and start jumping frames
    if (jumping) {
        if (frame - jumpFrame == 25) {
            jumping = 0;
            gravity = 10;
        }
    }

    // if not climbing, then apply gravity to mario
    if (!climbing) {
        if (collisionCheck(collisionMap, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, 0, gravity)) {
            mario.row += gravity;
        }
    }

    // prevent inputs when mario was knocked down by barrel or Donkey Kong and lock aniState
    if (down) {
        if (mario.aniState == LEFT || mario.prevAniState == LEFT) {
            mario.aniState = LEFTDOWN;
        }
        else {
            mario.aniState = RIGHTDOWN;
        }
        if (frame - downFrame == 20) {
            down = 0;
        }
    }

    // a short time interval is setted to prevent the player keep colliding with Donkey Kong
    // if kong.collided = 1, then collision between it and mario won't effect anything
    // if kong.collided = 0, then collision has effect
    if (frame - downFrame == 70) {
        if (kong.collided) {
            kong.collided = 0;
        }
    }

    // to deplete mario's hammer state after a certain time interval
    if (powerUp) {
        if (frame - hammerFrame == 150) {
            powerUp = 0;
            mario.aniState = LEFT;
        }
    }

    // when mario is off ladder
    if (mario.row == 232 || collisionCheck(laddercollisionMap, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, 0, -mario.rdel)) {
        climbing = 0;
    }

    updateMario();
    updateKong();
    updatePauline();
    updateBarrel();
    updateHeart();
}

void updateGame2() {
    frame++;

    if (jumping) {
        if (frame - jumpFrame == 25) {
            jumping = 0;
            gravity = 10;
        }
    }

    if (!climbing) {
        if (collisionCheck(collisionMap2, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, 0, gravity)) {
            mario.row += gravity;
        }
    }

    if (down) {
        if (mario.aniState == LEFT || mario.prevAniState == LEFT) {
            mario.aniState = LEFTDOWN;
        }
        else {
            mario.aniState = RIGHTDOWN;
        }
        if (frame - downFrame == 15) {
            down = 0;
        }
    }

    if (frame - downFrame == 70) {
        if (kong.collided) {
            kong.collided = 0;
        }
    }

    if (powerUp) {
        if (frame - hammerFrame == 150) {
            powerUp = 0;
            mario.aniState = LEFT;
        }
    }

    if (collisionCheck(laddercollisionMap2, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, 0, mario.rdel) || collisionCheck(laddercollisionMap2, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, 0, -mario.rdel)) {
        climbing = 0;
    }

    updateMario2();
    updateKong();
    updatePauline();
    updateBarrel2();
    updateHeart();
}

void updateMario() {
    // Pauline collision
    if (life > 0 && collision(mario.col, mario.row, mario.width, mario.height*2, pauline.col, pauline.row, pauline.width, pauline.height)) {
        score += 5;
        nextLevel = 1;
    }

    // Hammer collision
    if (collision(mario.col, mario.row, mario.width, mario.height, hammer.col, hammer.row, hammer.width, hammer.height)) {
        powerUp = 1;
        hammerFrame = frame;
        hammer.col = 256;
    }

    // Barrel collision
    for (int i = 0; i < BARRELCOUNT; i++) {
        if (!powerUp) {
            // mario collided with barrels
            if (collision(mario.col, mario.row, mario.width/2, mario.height/2, barrel[i].col, barrel[i].row, barrel[i].width/2, barrel[i].height/2)) {
                life--;
                down = 1;
                downFrame = frame;
                barrel[i].active = 0;
            }

            // mario jumps over the barrels
            if (jumping && !down && !climbing && !barrel[i].jumpedOver) {
                if (mario.aniState == LEFTJUMP) {
                    if (mario.row < barrel[i].row && mario.col <= barrel[i].col) {
                        score += 3;
                        barrel[i].jumpedOver = 1;
                    }
                }
                else if (mario.aniState == RIGHTJUMP) {
                    if (mario.row < barrel[i].row && mario.col <= barrel[i].col) {
                        score += 1;
                        barrel[i].jumpedOver = 1;
                    }
                }
            }
        }
        // mario destroys barrels with hammer
        else {
            if (collision(mario.col, mario.row, mario.width, mario.height, barrel[i].col, barrel[i].row, barrel[i].width, barrel[i].height)) {
                barrel[i].active = 0;
                score += 1;
            }
        }
    }

    // mario to climb ladders
    if (!powerUp && !down && !jumping) {
        if(BUTTON_HELD(BUTTON_UP)) {
            if (!collisionCheck(laddercollisionMap, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, 0, -mario.rdel)) {
                mario.row -= mario.rdel;
                climbing = 1;

                // Only move the screen if the character is in the proper spot AND the screen isn't already at the edge
                if (vOff-1 >= 0 && (mario.row - vOff) <= (SCREENHEIGHT / 2)) {
                    // Update background offset (aka move the screen) if the above is true
                    vOff--;
                }
            }
        }

        if(BUTTON_HELD(BUTTON_DOWN)) {
            if (!collisionCheck(laddercollisionMap, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, 0, mario.rdel) && mario.row + mario.rdel <= 232) {
                mario.row += mario.rdel;
                climbing = 1;

                if (vOff+1 < MAPHEIGHT - SCREENHEIGHT && (mario.row - vOff) > (SCREENHEIGHT / 2)) {
                    vOff++;
                }
            }
        }
    }
    
    // mario move left or right
    if (!climbing && !jumping && !down) {
        if(BUTTON_HELD(BUTTON_LEFT)) {
            if (collisionCheck(collisionMap, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, -mario.cdel, 0)
                && mario.col > 0) {
                mario.col -= mario.cdel;

                if (hOff-1 >= 0 && (mario.col - hOff) <= (SCREENWIDTH / 2)) {
                    hOff--;
                }
            }
        }

        if(BUTTON_HELD(BUTTON_RIGHT)) {
            if (collisionCheck(collisionMap, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, mario.cdel, 0)
                    && mario.col + mario.width - 1 < MAPWIDTH) {
                mario.col += mario.cdel;

                if (hOff+1 < MAPWIDTH - SCREENWIDTH && (mario.col - hOff) > (SCREENWIDTH / 2)) {
                    hOff++;
                }
            }
        }
    }

    animateMario();
}

void updateMario2() {
    // Pauline collision
    if (!down && collision(mario.col, mario.row, mario.width, mario.height*2, pauline.col, pauline.row, pauline.width, pauline.height)) {
        rescued = 1;
    }

    // Hammer collision
    if (collision(mario.col, mario.row, mario.width, mario.height, hammer.col, hammer.row, hammer.width, hammer.height)) {
        powerUp = 1;
        hammerFrame = frame;
        hammer.col = 256;
    }

    // Donkey Kong collision
    if (!kong.collided && collision(mario.col, mario.row, mario.width, mario.height, kong.col, kong.row, kong.width-3, kong.height)) {
        life -= 1;
        down = 1;
        downFrame = frame;
        kong.collided = 1;
    }
    

    // Barrel collision
    for (int i = 0; i < BARRELCOUNT; i++) {
        if (!powerUp) {
            // mario collided with barrels
            if (collision(mario.col, mario.row, mario.width/2, mario.height/2, barrel[i].col, barrel[i].row, barrel[i].width/2, barrel[i].height/2)) {
                life--;
                down = 1;
                downFrame = frame;
                barrel[i].active = 0;
            }

            // mario jumps over the barrels
            if (jumping && !down && !climbing && !barrel[i].jumpedOver) {
                if (mario.aniState == LEFTJUMP) {
                    if (mario.row < barrel[i].row && mario.col <= barrel[i].col) {
                        score += 3;
                        barrel[i].jumpedOver = 1;
                    }
                }
                else if (mario.aniState == RIGHTJUMP) {
                    if (mario.row < barrel[i].row && mario.col <= barrel[i].col) {
                        score += 1;
                        barrel[i].jumpedOver = 1;
                    }
                }
            }
        }
        else {
            if (collision(mario.col, mario.row, mario.width, mario.height, barrel[i].col, barrel[i].row, barrel[i].width, barrel[i].height)) {
                barrel[i].active = 0;
                score += 1;
            }
        }
    }

    if (!powerUp && !down && !jumping) {
        if(BUTTON_HELD(BUTTON_UP)) {
            if (!collisionCheck(laddercollisionMap2, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, 0, -mario.rdel)) {
                mario.row -= mario.rdel;
                climbing = 1;

                // Only move the screen if the character is in the proper spot AND the screen isn't already at the edge
                if (vOff-1 >= 0 && (mario.row - vOff) <= (SCREENHEIGHT / 2)) {
                    // Update background offset (aka move the screen) if the above is true
                    vOff--;
                }
            }
        }

        if(BUTTON_HELD(BUTTON_DOWN)) {
            if (!collisionCheck(laddercollisionMap2, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, 0, mario.rdel)) {
                mario.row += mario.rdel;
                climbing = 1;

                if (vOff+1 < MAPHEIGHT - SCREENHEIGHT && (mario.row - vOff) > (SCREENHEIGHT / 2)) {
                    vOff++;
                }
            }
        }

    }
    
    if (!climbing && !jumping && !down) {
        if(BUTTON_HELD(BUTTON_LEFT)) {
            if (collisionCheck(collisionMap2, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, -mario.cdel, 0)) {
                mario.col -= mario.cdel;

                // Only move the screen if the character is in the proper spot AND the screen isn't already at the edge
                if (hOff-1 >= 0 && (mario.col - hOff) <= (SCREENWIDTH / 2)) {
                    // Update background offset if the above is true
                    hOff--;
                }
            }
        }

        if(BUTTON_HELD(BUTTON_RIGHT)) {
            if (collisionCheck(collisionMap2, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, mario.cdel, 0)) {
                mario.col += mario.cdel;

                if (hOff+1 < MAPWIDTH - SCREENWIDTH && (mario.col - hOff) > (SCREENWIDTH / 2)) {
                    hOff++;
                }
            }
        }
    }

    animateMario2();
}

void updateKong() {
    animateKong();
}

void updatePauline() {
    animatePauline();
}

void updateBarrel() {
    // time interval for barrels to active
    if (frame % 150 == 0) {
        for (int i = 0; i < BARRELCOUNT; i++) {
            if (!barrel[i].active) {
                barrel[i].active = 1;
                break;
            }
        }
    }

    // barrels animation
    for (int i = 0; i < BARRELCOUNT; i++) {
        if (!barrel[i].active) {
            barrel[i].row = 188;
            barrel[i].col = SCREENWIDTH / 2 - barrel[i].width * 3;
            barrel[i].dropped = 0;
            barrel[i].jumpedOver = 0;
        }
        else {
            // barrels row down the ladder
            if (!collisionCheck(laddercollisionMap, MAPWIDTH, barrel[i].col, barrel[i].row, barrel[i].width, barrel[i].height, 0, barrel[i].rdel)) {
                barrel[i].row += barrel[i].rdel;
                barrel[i].dropped = 1;
            }
            else {
                if (barrel[i].dropped) {
                    barrel[i].col -= barrel[i].cdel;
                    if (barrel[i].col + barrel[i].width - 1 < 0) {
                        barrel[i].active = 0;
                    }
                }
                else {
                    barrel[i].col += barrel[i].cdel;
                }
            }
        }
    }


    animateBarrel();
}

void updateBarrel2() {
    // time interval for barrels to active
    if (frame % 150 == 0) {
        for (int i = 0; i < BARRELCOUNT; i++) {
            if (!barrel[i].active) {
                barrel[i].active = 1;
                break;
            }
        }
    }

    // barrels animation
    for (int i = 0; i < BARRELCOUNT; i++) {
        if (!barrel[i].active) {
            barrel[i].row = 83;
            barrel[i].col = SCREENWIDTH / 2 - kong.height * 3 + 15;
            barrel[i].dropped = 0;
            barrel[i].jumpedOver = 0;
        }
        else {
            // barrels roll up the ladder
            if (!collisionCheck(laddercollisionMap2, MAPWIDTH, barrel[i].col, barrel[i].row, barrel[i].width, barrel[i].height, 0, -barrel[i].rdel * 3)) {
                barrel[i].row -= barrel[i].rdel;
            }
            else {
                barrel[i].col += barrel[i].cdel;
                if (barrel[i].col >= 90 && barrel[i].col <= 150 && barrel[i].row <= 132) {
                    if (collisionCheck(collisionMap2, MAPWIDTH, barrel[i].col, barrel[i].row, barrel[i].width, barrel[i].height, 0, barrel[i].rdel)) {
                        barrel[i].row += barrel[i].rdel;
                    }
                }
                if (barrel[i].col > MAPWIDTH) {
                    barrel[i].active = 0;
                }
            }
        }
    }

    animateBarrel();
}

void updateHeart() {
    // update (inactive) heart object pool based on life left
    for (int i = 0; i < (HEARTCOUNT - life); i++) {
        if (heart[i].active) {
            heart[i].active = 0;
        }
    }
}

void animateMario() {
    // Set previous state to current state
    mario.prevAniState = mario.aniState;
    mario.aniState = IDLE;

    if (powerUp) {
        if (BUTTON_HELD(BUTTON_RIGHT)) {
            mario.aniState = RIGHTHAMMER;
        }
        else {
            mario.aniState = LEFTHAMMER;
        }
    }

    // Change the animation frame every 15 frames of gameplay
    if(mario.aniCounter % 15 == 0) {
        mario.curFrame = (mario.curFrame + 1) % mario.numFrames;
    }

    // Control movement and change animation state
    if (!climbing && !down && !jumping) {
            if(BUTTON_HELD(BUTTON_LEFT) && !powerUp) {
                mario.aniState = LEFT;
            }
            if(BUTTON_HELD(BUTTON_RIGHT) && !powerUp) {
                mario.aniState = RIGHT;
            }
            if (!powerUp && !down && !jumping) {
                if (mario.aniState == LEFT && BUTTON_PRESSED(BUTTON_B)) {
                    mario.aniState = LEFTJUMP;
                    jumping = 1;
                    jumpFrame = frame;
                    if (collisionCheck(collisionMap, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, -5, -gravity)) {
                        mario.row -= gravity;
                        mario.col -= 5;
                        gravity = 0;
                    }
                    
                }
                else if (mario.aniState == RIGHT && BUTTON_PRESSED(BUTTON_B)) {
                    mario.aniState = RIGHTJUMP;
                    jumping = 1;
                    jumpFrame = frame;
                    if (collisionCheck(collisionMap, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, 5, -gravity)) {
                        mario.row -= gravity;
                        mario.col += 5;
                        gravity = 0;
                    }
                }
            }
            
        }
        else if (!powerUp && !down && !jumping) {
            if(BUTTON_HELD(BUTTON_UP) || BUTTON_HELD(BUTTON_DOWN)) {
                mario.aniState = CLIMB;
            }
        }

    if (mario.aniState == IDLE) {
        mario.curFrame = 0;
        mario.aniCounter = 0;
        mario.aniState = mario.prevAniState;
    }
    else {
        mario.aniCounter++;
    }

}

void animateMario2() {
    // Set previous state to current state
    mario.prevAniState = mario.aniState;
    mario.aniState = IDLE;
    mario.numFrames = 2;

    // animation after got hammer
    if (powerUp) {
        if (BUTTON_HELD(BUTTON_RIGHT)) {
            mario.aniState = RIGHTHAMMER;
        }
        else {
            mario.aniState = LEFTHAMMER;
        }
    }

    // Change the animation frame every 15 frames of gameplay
    if(mario.aniCounter % 15 == 0) {
        mario.curFrame = (mario.curFrame + 1) % mario.numFrames;
    }

    // Control movement and change animation state
    if (!climbing && !down && !jumping) {
            if(BUTTON_HELD(BUTTON_LEFT) && !powerUp) {
                mario.aniState = LEFT;
            }
            if(BUTTON_HELD(BUTTON_RIGHT) && !powerUp) {
                mario.aniState = RIGHT;
            }
            if (!powerUp && !down && !jumping) {
                if (mario.aniState == LEFT && BUTTON_PRESSED(BUTTON_B)) {
                    mario.aniState = LEFTJUMP;
                    jumping = 1;
                    jumpFrame = frame;
                    if (collisionCheck(collisionMap2, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, -5, -gravity)) {
                        mario.row -= gravity;
                        mario.col -= 5;
                        gravity = 0;
                    }
                    
                }
                else if (mario.aniState == RIGHT && BUTTON_PRESSED(BUTTON_B)) {
                    mario.aniState = RIGHTJUMP;
                    jumping = 1;
                    jumpFrame = frame;
                    if (collisionCheck(collisionMap2, MAPWIDTH, mario.col, mario.row, mario.width, mario.height, 5, -gravity)) {
                        mario.row -= gravity;
                        mario.col += 5;
                        gravity = 0;
                    }
                }
            }
            
        }
        else if (!powerUp && !down && !jumping) {
            if(BUTTON_HELD(BUTTON_UP) || BUTTON_HELD(BUTTON_DOWN)) {
                mario.aniState = CLIMB;
            }
        }

    if (mario.aniState == IDLE) {
        mario.curFrame = 0;
        mario.aniCounter = 0;
        mario.aniState = mario.prevAniState;
    }
    else {
        mario.aniCounter++;
    }

}

void animateKong() {
    // Change the animation frame every 15 frames of gameplay
    kong.aniCounter++;

    if(kong.aniCounter % 50 == 0) {
        kong.curFrame = (kong.curFrame + 1) % kong.numFrames;
    }

}

void animatePauline() {
    // Change the animation frame every 15 frames of gameplay
    pauline.aniCounter++;

    if(pauline.aniCounter % 30 == 0) {
        pauline.curFrame = (pauline.curFrame + 1) % pauline.numFrames;
    }
}

void animateBarrel() {
    for (int i = 0; i < BARRELCOUNT; i++) {
        barrel[i].aniCounter++;
        if (barrel[i].aniCounter % 15 == 0) {
            if (barrel[i].active) {
                barrel[i].curFrame = (barrel[i].curFrame + 1) % barrel[i].numFrames;
            }
        }
    }
}

void drawGame() {
    drawMario();
    drawKong();
    drawPauline();
    drawBarrel();
    drawBarrel2();
    drawHammer();
    drawHeart();
    drawScore();
    // Waiting for VBlank
    waitForVBlank();

    // Copy the shadowOAM into the OAM:
    DMANow(3, shadowOAM, OAM, 128 * 4);

    // Updating BG1 hOff and vOff
    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}

void drawMario() {
    if (life == 0) {
        shadowOAM[0].attr0 = (mario.row - vOff) | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (mario.col - hOff) | ATTR1_SMALL;
        shadowOAM[0].attr2 = ATTR2_TILEID(14, mario.curFrame * 2) | ATTR2_PALROW(0);
    }
    else if (mario.aniState == RIGHTHAMMER) {
        shadowOAM[0].attr0 = (mario.row - vOff) | ATTR0_WIDE;
        shadowOAM[0].attr1 = (mario.col - hOff) | ATTR1_MEDIUM;
        shadowOAM[0].attr2 = ATTR2_TILEID(16, mario.curFrame * 2) | ATTR2_PALROW(0);
    }
    else if (mario.aniState == LEFTHAMMER) {
        shadowOAM[0].attr0 = (mario.row - vOff) | ATTR0_WIDE;
        shadowOAM[0].attr1 = (mario.col - hOff) | ATTR1_MEDIUM;
        shadowOAM[0].attr2 = ATTR2_TILEID(20, mario.curFrame * 2) | ATTR2_PALROW(0);
    }
    else {
        shadowOAM[0].attr0 = (mario.row - vOff) | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (mario.col - hOff) | ATTR1_SMALL;
        shadowOAM[0].attr2 = ATTR2_TILEID(mario.aniState * 2, mario.curFrame * 2) | ATTR2_PALROW(0);
    }
}

void drawKong() {
    shadowOAM[1].attr0 = (kong.row - vOff) | ATTR0_WIDE;
    shadowOAM[1].attr1 = (kong.col - hOff) | ATTR1_LARGE;
    shadowOAM[1].attr2 = ATTR2_TILEID(0, kong.curFrame * 4 + 4) | ATTR2_PALROW(0);
}

void drawPauline() {
    shadowOAM[2].attr0 = (pauline.row - vOff) | ATTR0_TALL;
    shadowOAM[2].attr1 = (pauline.col - hOff) | ATTR1_MEDIUM;
    shadowOAM[2].attr2 = ATTR2_TILEID(24, pauline.curFrame * 4) | ATTR2_PALROW(0);
}

void drawBarrel() {
    for (int i = 0; i < BARRELCOUNT; i++) {
        shadowOAM[3+i].attr0 = (barrel[i].row - vOff) | ATTR0_SQUARE;
        shadowOAM[3+i].attr1 = (barrel[i].col - hOff) | ATTR1_SMALL;
        if (!collisionCheck(laddercollisionMap, MAPWIDTH, barrel[i].col, barrel[i].row, barrel[i].width, barrel[i].height, 0, barrel[i].rdel)) {
            shadowOAM[3+i].attr2 = ATTR2_TILEID(0, barrel[i].curFrame * 2 + 16) | ATTR2_PALROW(0);
        }
        else {
            shadowOAM[3+i].attr2 = ATTR2_TILEID(barrel[i].aniState * 2, barrel[i].curFrame * 2 + 16) | ATTR2_PALROW(0);
        }
        
    }
}

void drawBarrel2() {
    for (int i = 0; i < BARRELCOUNT; i++) {
        shadowOAM[14+i].attr0 = (barrel[i].row - vOff) | ATTR0_SQUARE;
        shadowOAM[14+i].attr1 = (barrel[i].col - hOff) | ATTR1_SMALL;
        if (!collisionCheck(laddercollisionMap2, MAPWIDTH, barrel[i].col, barrel[i].row, barrel[i].width, barrel[i].height, 0, -barrel[i].rdel)) {
            shadowOAM[14+i].attr2 = ATTR2_TILEID(0, barrel[i].curFrame * 2 + 16) | ATTR2_PALROW(0);
        }
        else {
            shadowOAM[14+i].attr2 = ATTR2_TILEID(barrel[i].aniState * 2, barrel[i].curFrame * 2 + 16) | ATTR2_PALROW(0);
        }
    }
}

void drawHammer() {
    shadowOAM[8].attr0 = (hammer.row - vOff) | ATTR0_SQUARE;
    shadowOAM[8].attr1 = (hammer.col - hOff) | ATTR1_SMALL;
    shadowOAM[8].attr2 = ATTR2_TILEID(26, 0) | ATTR2_PALROW(0);
}

void drawHeart() {
    for (int i = 0; i < HEARTCOUNT; i++) {
        if (heart[i].active) {
            shadowOAM[9+i].attr0 = (heart[i].row - vOff) | ATTR0_SQUARE;
            shadowOAM[9+i].attr1 = (heart[i].col - hOff) | ATTR1_SMALL;
            shadowOAM[9+i].attr2 = ATTR2_TILEID(28, 0) | ATTR2_PALROW(0);
        }
        else {
            shadowOAM[9+i].attr0 = (heart[i].row - vOff) | ATTR0_SQUARE;
            shadowOAM[9+i].attr1 = (heart[i].col - hOff) | ATTR1_SMALL;
            shadowOAM[9+i].attr2 = ATTR2_TILEID(30, 0) | ATTR2_PALROW(0);
        }
    }
}

void drawScore() {
    if (score < 10) {
        shadowOAM[12].attr0 = (scoreUI[0].row - vOff) | ATTR0_SQUARE;
        shadowOAM[12].attr1 = (scoreUI[0].col - hOff) | ATTR1_TINY;
        shadowOAM[12].attr2 = ATTR2_TILEID(0, 20) | ATTR2_PALROW(0);
        shadowOAM[13].attr0 = (scoreUI[1].row - vOff) | ATTR0_SQUARE;
        shadowOAM[13].attr1 = (scoreUI[1].col - hOff) | ATTR1_TINY;
        shadowOAM[13].attr2 = ATTR2_TILEID(0, score + 20) | ATTR2_PALROW(0);
    }
    else {
        shadowOAM[12].attr0 = (scoreUI[0].row - vOff) | ATTR0_SQUARE;
        shadowOAM[12].attr1 = (scoreUI[0].col - hOff) | ATTR1_TINY;
        shadowOAM[12].attr2 = ATTR2_TILEID(0, (score/10%10) + 20) | ATTR2_PALROW(0);
        shadowOAM[13].attr0 = (scoreUI[1].row - vOff) | ATTR0_SQUARE;
        shadowOAM[13].attr1 = (scoreUI[1].col - hOff) | ATTR1_TINY;
        shadowOAM[13].attr2 = ATTR2_TILEID(0, (score%10) + 20) | ATTR2_PALROW(0);
    }
}
