#include <stdlib.h>
#include "HW03Lib.h"
#include "game.h"

// Variables
PLAYER claw;
BOMB bomb[BOMBCOUNT];
int bombRemaining, lost, tempRow;
u16 pickColor[] = {GRAY, MAGENTA, RED, WHITE};
u16 largeHitColor[] = {GRAY, RED, WHITE};

// Initialize the game
void initGame() {
	initClaw();
	initBomb();
	bombRemaining = BOMBCOUNT;
}

// Updates the game each frame
void updateGame() {
	updateClaw();
	// Update all the bomb
	for (int i = 0; i < BOMBCOUNT; i++) {
		updateBomb(&bomb[i]);
	}

}

// Draws the game each frame
void drawGame() {
	drawClaw();
	// Draw all the bomb
	for (int i = 0; i < BOMBCOUNT; i++) {
		drawBomb(&bomb[i]);
	}
}

// Initialize the claw
void initClaw() {
	claw.row = 0;
	claw.col = SCREENWIDTH/2;
	claw.oldRow = claw.row;
	claw.oldCol = claw.col;
	claw.cdel = 1;
	claw.rdel = 1;
	claw.height = 18;
	claw.width = 25;
	claw.stickLength = 6;
	claw.color = COLOR(255, 175, 75);
}

 // Handle every-frame actions of the claw
void updateClaw() {

 	// Move the claw left
	if (BUTTON_HELD(BUTTON_LEFT) && claw.col >= claw.cdel) {
		claw.col -= claw.cdel;
	}
	// Move the claw right
	else if (BUTTON_HELD(BUTTON_RIGHT) && claw.col + claw.width - 1 < SCREENWIDTH - claw.cdel) {
		claw.col += claw.cdel;
	}
	// Move the claw downward
	else if (BUTTON_HELD(BUTTON_DOWN) && claw.row + claw.height + claw.width/4 < SCREENHEIGHT) {
		claw.stickLength += claw.rdel;
		claw.row += claw.rdel;
	}
	// Move the claw upward
	else if (BUTTON_HELD(BUTTON_UP) && claw.row > 0) {
		claw.row -= claw.rdel;
	}
}

// Draw the claw
void drawClaw() {

	drawClawModel(claw.oldCol, claw.oldRow, claw.width, claw.height, claw.stickLength, BLUE);
	drawClawModel(claw.col, claw.row, claw.width, claw.height, claw.stickLength, claw.color);

	claw.oldRow = claw.row;
	claw.oldCol = claw.col;
}

// Initialize the bomb
void initBomb() {

	// randomize the spawn row of the bomb
	tempRow = (rand() % (25 - 20 + 1)) + 20;

	for (int i = 0; i < BOMBCOUNT; i++) {
		tempRow += 20;
		bomb[i].row = tempRow;
		bomb[i].col = rand() % 130 + 20;
		bomb[i].oldRow = bomb[i].row;
		bomb[i].oldCol = bomb[i].col;
		bomb[i].color = pickColor[0];
		bomb[i].touched = 0;
		// differentiate properties between large and small bombs
		if (i > 1) {
			bomb[i].direction = 'l';
			bomb[i].cdel = -2;
			bomb[i].size = 's';
			bomb[i].height = 15;
			bomb[i].width = 15;
		}
		if (i <= 1) {
			bomb[i].direction = 'r';
			bomb[i].cdel = 1;
			bomb[i].size = 'l';
			bomb[i].height = 21;
			bomb[i].width = 21;
		}
		bomb[i].active = 1;
		bomb[i].erased = 0;
	}

}

// Handle every-frame actions of a ball
void updateBomb(BOMB* b) {

	// if the bomb hit walls for certain times, it will explode and lead to lose state
	if (b->size == 's' && b->touched > 3 && !collision(claw.col, claw.row, claw.width, claw.height, b->col, b->row, b->width, b->height)) {
		lost = 1;
	}

	if (b->size == 'l' && b->touched > 2 && !collision(claw.col, claw.row, claw.width, claw.height, b->col, b->row, b->width, b->height)) {
		lost = 1;
	}

	if (b->active) {

		// Move the ball
		b->col += b->cdel;

		// bounce back from the wall and change color to indicate how close the bomb is about to explode and count the times hit walls
		if (b->col <= 0 || b->col + b->width-1 >= SCREENWIDTH) {
			b->cdel *= -1;
			b->touched++;
			if (b->size == 's') {
				b->color = pickColor[b->touched];
			}
			if (b->size == 'l') {
				b->color = largeHitColor[b->touched];
			}
			
		}

		// If all the water mine is cleared, it leads to win state
		if (collision(claw.col, claw.row, claw.width, claw.height, b->col, b->row, b->width, b->height)) {
				b->active = 0;
				bombRemaining--;
		}
	}
}

// Draw bomb
void drawBomb(BOMB* b) {
	int randRow = (rand() % (140 - 30 + 1)) + 30;
	if (b->active) {
		if (b->size == 's') {
			drawSmallBomb(b->oldCol, b->oldRow, b->width, b->height, BLUE);
			drawSmallBomb(b->col, b->row, b->width, b->height, b->color);
		}
		// for drawing large size bomb
		if (b->size == 'l') {
			drawLargeBomb(b->oldCol, b->oldRow, b->width, b->height, BLUE);
			drawLargeBomb(b->col, b->row, b->width, b->height, b->color);
		}
	} else if (!b->erased) {
		if (b->size == 's') {
			drawSmallBomb(b->oldCol, b->oldRow, b->width, b->height, BLUE);
		}
		if (b->size == 'l') {
			drawLargeBomb(b->oldCol, b->oldRow, b->width, b->height, BLUE);
		}
		b->erased = 1;
	}
	b->oldRow = b->row;
	b->oldCol = b->col;
}
