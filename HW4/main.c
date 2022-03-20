#include <stdlib.h>
#include <stdio.h>
#include "HW04Lib.h"
#include "text.h"
#include "game.h"
#include "start.h"

// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

// States
enum {START, GAME, PAUSE, WIN, LOSE};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;

// Text Buffer
char buffer[41];
char buffer2[41];

int main() {
    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
        switch(state) {
            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }

    }
}

// Sets up GBA
void initialize() {
    REG_DISPCTL = MODE4 | BG2_ENABLE | DISP_BACKBUFFER;

  // Enable sound (Master control)
  REG_SOUNDCNT_X = SND_ENABLED;

  // Master sound controls for DMG (GameBoy) Sound Generators
  REG_SOUNDCNT_L = DMG_VOL_LEFT(5) |
                   DMG_VOL_RIGHT(5) |
                   DMG_SND1_LEFT |
                   DMG_SND1_RIGHT |
                   DMG_SND2_LEFT |
                   DMG_SND2_RIGHT |
                   DMG_SND3_LEFT |
                   DMG_SND3_RIGHT |
                   DMG_SND4_LEFT |
                   DMG_SND4_RIGHT;

  REG_SOUNDCNT_H = DMG_MASTER_VOL(2);

    // Set up the first state
    goToStart();
}

// Sets up the start state
void goToStart() {
    // Call DMANow to load in startPal
    DMANow(3, startPal, PALETTE, 256);

    // UNCOMMENT 4.5
    drawFullscreenImage4(startBitmap);

    // Wait for vertical blank and flip the page (you don't need to reload the palette)
    waitForVBlank();
    flipPage();

    state = START;

    // Begin the seed randomization
    seed = 0;
    touchLineLost = 0;
}

// Runs every frame of the start state
void start() {
    seed++;

    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {

        // Seed the random generator
        srand(seed);

        goToGame();
        initGame();
    }
}

// Sets up the game state
void goToGame() {
    state = GAME;
}

// Runs every frame of the game state
void game() {
    updateGame();
    drawGame();
    

    // Update the score
    sprintf(buffer, "Alien: %d", aliensRemaining);
    drawString4(15, 145, buffer, GRAYID);

    sprintf(buffer2, "Takedown: %d", aliensHit);
    drawString4(158, 145, buffer2, GRAYID);

    waitForVBlank();
    flipPage();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToPause();
    else if (aliensRemaining == 0)
        goToWin();
    // if the bar is completely gone (destroyed by ailen's bullet, then lose)
    else if (touchLineLost)
        goToLose();
}

// Sets up the pause state
void goToPause() {
    fillScreen4(PORTAGEID);
    drawString4(120-15, 80-3, "Pause", BLACKID);

    // Wait for vertical blank and flip the page
    waitForVBlank();
    flipPage();

    state = PAUSE;
}

// Runs every frame of the pause state
void pause() {
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToGame();
    else if (BUTTON_PRESSED(BUTTON_SELECT))
        goToStart();
}

// Sets up the win state
void goToWin() {
    fillScreen4(PERSIANID);
    drawString4(120-9, 80-3, "Won", WHITEID);

    // play sound when won
    REG_SND2CNT = DMG_ENV_VOL(10) | DMG_DIRECTION_DECR | DMG_STEP_TIME(7) | DMG_DUTY_50;
    REG_SND2FREQ = NOTE_D2 | SND_RESET | DMG_FREQ_TIMED;
    REG_SND2FREQ = NOTE_D4 | SND_RESET | DMG_FREQ_TIMED;
    REG_SND2FREQ = NOTE_D6 | SND_RESET | DMG_FREQ_TIMED;
    REG_SND2FREQ = NOTE_G2 | SND_RESET | DMG_FREQ_TIMED;


    // Wait for vertical blank and flip the page
    waitForVBlank();
    flipPage();

    state = WIN;
}

// Runs every frame of the win state
void win() {
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}

// Sets up the lose state
void goToLose() {
    fillScreen4(WHITEID);
    drawString4(110-12, 80-3, "Invaded", VIOREDID);

    // Wait for vertical blank and flip the page
    waitForVBlank();
    flipPage();

    state = LOSE;
}

// Runs every frame of the lose state
void lose() {
    // Lock the framerate to 60 fps
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START))
        goToStart();
}