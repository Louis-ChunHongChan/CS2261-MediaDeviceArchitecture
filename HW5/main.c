#include <stdlib.h>
#include <stdio.h>
#include "mode0.h"
#include "game.h"
#include "title.h"
#include "pause.h"
#include "gameBg.h"
#include "gameBg2.h"
#include "lose.h"
#include "win.h"
#include "level2.h"

// Prototypes.
void initialize();
void initialize2();


// State Prototypes.
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

// States.
enum {
    START,
    GAME,
    PAUSE,
    WIN,
    LOSE
};
int state;

// Button Variables.
unsigned short buttons;
unsigned short oldButtons;

int initialized2 = 0;

// Shadow OAM.
OBJ_ATTR shadowOAM[128];

// Text Buffer
char buffer[41];
char buffer2[41];

int main() {

    initialize();

    while (1) {
        // Update button variables.
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine.
        switch (state) {
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

// Sets up GBA.
void initialize() {
    nextLevel = 0;
    life = 3;
    rescued = 0;
    score = 0;
    initialized2 = 0;

    buttons = BUTTONS;
    oldButtons = 0;

    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    
    // Call DMANow to load in startPal
    DMANow(3, titlePal, PALETTE, titlePalLen / 2);
    DMANow(3, titleTiles, &CHARBLOCK[0], titleTilesLen / 2);
    DMANow(3, titleMap, &SCREENBLOCK[31], titleMapLen / 2);

    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    
    goToStart();
}

// Sets up GBA for level 2
void initialize2() {
    buttons = BUTTONS;
    oldButtons = 0;

    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    
    // Call DMANow to load in startPal
    DMANow(3, level2Pal, PALETTE, level2PalLen / 2);
    DMANow(3, level2Tiles, &CHARBLOCK[0], level2TilesLen / 2);
    DMANow(3, level2Map, &SCREENBLOCK[31], level2MapLen / 2);

    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    
    initialized2 = 1;
    goToStart();
}

// Sets up the start state.
void goToStart() {
    waitForVBlank();
    state = START;

}

// Runs every frame of the start state.
void start() {
    waitForVBlank();

    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        if (!nextLevel) {
            initGame();
        }
        else {
            initGame2();
        }
        goToGame();
    }
}

// Sets up the game state.
void goToGame() {
    waitForVBlank();
    // Load the background's palette and tiles into a desired space in memory
    if (!nextLevel) {
        DMANow(3, gameBgPal, PALETTE, 256);
        DMANow(3, gameBgTiles, &CHARBLOCK[0], gameBgTilesLen / 2);
        DMANow(3, gameBgMap, &SCREENBLOCK[31], gameBgMapLen / 2);
    }
    else {
        DMANow(3, gameBg2Pal, PALETTE, 256);
        DMANow(3, gameBg2Tiles, &CHARBLOCK[0], gameBg2TilesLen / 2);
        DMANow(3, gameBg2Map, &SCREENBLOCK[31], gameBg2MapLen / 2);
    }
    state = GAME;
}

// Runs every frame of the game state.
void game() {
    if (!nextLevel) {
        updateGame();
        drawGame();
    }
    else {
        if (!initialized2) {
            initialize2();
        }
        else {
            updateGame2();
            drawGame();
        }   
    }
    // State transitions
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (life == 0) {
        goToLose();
    }
    // Easter egg: if score 99 win directly
    if (rescued || score == 99) {
        goToWin();
    }
}

// Sets up the pause state.
void goToPause() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    // Load in pause pal
    DMANow(3, pausePal, PALETTE, pausePalLen / 2);
    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[31], pauseMapLen / 2);

    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    state = PAUSE;
}

// Runs every frame of the pause state.
void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
}

// Sets up the win state.
void goToWin() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    // Load in pause pal
    DMANow(3, winPal, PALETTE, winPalLen / 2);
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen / 2);
    DMANow(3, winMap, &SCREENBLOCK[31], winMapLen / 2);

    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    state = WIN;
}

// Runs every frame of the win state.
void win() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        initialize();
    }
}

// Sets up the lose state.
void goToLose() {
    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    // Load in pause pal
    DMANow(3, losePal, PALETTE, losePalLen / 2);
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen / 2);
    DMANow(3, loseMap, &SCREENBLOCK[31], loseMapLen / 2);

    REG_BG1VOFF = 0;
    REG_BG1HOFF = 0;
    state = LOSE;
}

// Runs every frame of the lose state.
void lose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        initialize();
    }
}