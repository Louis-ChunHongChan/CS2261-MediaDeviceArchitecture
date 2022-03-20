#include <stdlib.h>
#include "HW03Lib.h"
#include "game.h"
#include "text.h"

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

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;

        // State Machine
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
            default:
                break;
        }
    }
}

// Sets up GBA
void initialize() {
    REG_DISPCTL = MODE3 | BG2_ENABLE;
    goToStart();
}

// State and state transition functions
void goToStart() {
    fillScreen(PINK);
    state = START;
    seed = 0;
    lost = 0;
    drawString((240 - (21 * 6)) / 2, 0, "Press SELECT To Play", BLACK);
}

void start() {
    seed++;
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToGame();
        srand(seed);
        initGame();
    }
}

void goToGame() {
    fillScreen(BLUE);
    state = GAME;
}

void game() {
    updateGame();
    waitForVBlank();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }
    // condition to go to win state
    if (bombRemaining == 0) {
        goToWin();
    }
    // condition to go to lose state
    if (lost) {
        goToLose();
    }
}

void goToPause() {
    fillScreen(BLACK);
    state = PAUSE;
    drawString((240 - (7 * 6)) / 2, 0, "PAUSED", WHITE);
}

void pause() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToWin() {
    state = WIN;
    fillScreen(GOLD);
    drawString((240 - (32 * 6)) / 2, 0, "You Cleared All The Water Mines!", MAGENTA);
}

void win() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

void goToLose() {
    state = LOSE;
    fillScreen(WHITE);
    drawString((240 - (8 * 6)) / 2, 0, "You Died", RED);
}

void lose() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}
