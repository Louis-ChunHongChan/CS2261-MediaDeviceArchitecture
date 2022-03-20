#include <stdlib.h>
#include "lab04Lib.h"
#include "game.h"
#include "text.h"

// Prototypes
void initialize();

// State Prototypes
// TODO 1.2: Add your state and state transition function prototypes here
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
        // TODO 1.0: Make the state machine here 
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

    // TODO 1.3: Call your goToStart function here
    goToStart();
}

// TODO 1.1: Make your state and state transition functions
void goToStart() {
    fillScreen(PINK);
    state = START;
    seed = 0;
    drawString((240 - (21 * 6)) / 2, 0, "press SELECT to play", BLACK);
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
    fillScreen(BLACK);
    state = GAME;
}

void game() {
    updateGame();
    waitForVBlank();
    drawGame();
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }
    if (ballsRemaining == 0) {
        goToWin();
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToLose();
    }
}

void goToPause() {
    fillScreen(BLUE);
    state = PAUSE;
    drawString((240 - (7 * 6)) / 2, 0, "paused", RED);
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
    fillScreen(GREEN);
    drawString((240 - (9 * 6)) / 2, 0, "you win!", WHITE);
}

void win() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

void goToLose() {
    state = LOSE;
    fillScreen(RED);
    drawString((240 - (10 * 6)) / 2, 0, "you lose!", GOLD);
}

void lose() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}


// TODO 2.1: Add drawString calls for each state transition function inside your state machine


