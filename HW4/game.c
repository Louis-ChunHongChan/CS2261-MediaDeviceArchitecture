#include <stdlib.h>
#include "HW04lib.h"
#include "game.h"
#include "small_image.h"

// Variables
PLAYER player;
BULLET bullets[BULLETCOUNT];
ALIEN aliens[ALIENCOUNT];
int aliensRemaining;
int aliensHit;
int touchLineLost = 0;
int alienTimer = 35;

// Initialize the game
void initGame() {
	initPlayer();
	initBullets();
	initAliens();

	// Initialize the score
	aliensRemaining = ALIENCOUNT;
	aliensHit = 0;

	// Initialize the colors
	unsigned short colors[NUMCOLORS] = {BLACK, PORTAGE, PERSIAN, VIORED, WHITE, GRAY};

	// Load the small_image's palette
	DMANow(3, small_imagePal, PALETTE, 256);

	// Load the custom game colors to the end
	for (int i = 0; i < NUMCOLORS; i++) {
		PALETTE[256-NUMCOLORS+i] = colors[i];
	}
}

// Updates the game each frame
void updateGame() {
	updatePlayer();

	// Update all the bullets
	for (int i = 0; i < BULLETCOUNT; i++) {
		updateBullet(&bullets[i]);
	}

	// Control which alien should start approach the baseline
	if (alienTimer >= 35) {
		int r = rand() % ALIENCOUNT;
		aliens[r].fire = 1;
		alienTimer = 0;
	}
	alienTimer++;

	// Update all the aliens
	for (int i = 0; i < ALIENCOUNT; i++) {
		updateAlien(&aliens[i]);
	}
}

// Draws the game each frame
void drawGame() {
	fillScreen4(BLACK);

	drawPlayer();
	drawBar();

	// Draw all the bullets
	for (int i = 0; i < BULLETCOUNT; i++)
		drawBullet(&bullets[i]);

	// Draw all the aliens
	for (int i = 0; i < ALIENCOUNT; i++)
		drawAlien(&aliens[i]);
}

// Draws the bar protecting the player
void drawBar() {
	drawRect4(0, 120, 240, 3, PERSIANID);
}

// Initialize the player
void initPlayer() {
	player.row = 130;
	player.col = 118;
	player.cdel = 2;
	player.height = 12;
	player.width = 5;
	player.color = VIOREDID;
	player.bulletTimer = 20;
}

// Handle every-frame actions of the player
void updatePlayer() {
	// Move the player
	if (BUTTON_HELD(BUTTON_LEFT) && player.col - player.width >= player.cdel) {
		player.col -= player.cdel;
		player.cDirection = -1;
	} else if (BUTTON_HELD(BUTTON_RIGHT)
		&& player.col + player.width *2 - 1 < SCREENWIDTH - player.cdel) {
		player.col += player.cdel;
		player.cDirection = 1;
	} else {
		player.cDirection = 0;
	}

	// Fire bullets
	if (BUTTON_PRESSED(BUTTON_A) && player.bulletTimer >= 20) {
		fireBullet();
		player.bulletTimer = 0;
	}
	player.bulletTimer++;
}

// Draw the player
void drawPlayer() {
	drawRect4(player.col, player.row, player.width, player.height, player.color);
	drawRect4(player.col-player.width, player.row+player.height/2, player.width, player.height/2, player.color);
	drawRect4(player.col+player.width, player.row+player.height/2, player.width, player.height/2, player.color);
}

// Initialize the pool of bullets
void initBullets() {
	for (int i = 0; i < BULLETCOUNT; i++) {
		bullets[i].height = 4;
		bullets[i].width = 3;
		bullets[i].row = -bullets[i].height;
		bullets[i].col = 0;
		bullets[i].rdel = -2;
		bullets[i].color = WHITEID;
		bullets[i].active = 0;
	}
}

// Spawn a bullet
void fireBullet() {
	// Play sound for firing bullet
	REG_SND2CNT = DMG_ENV_VOL(10) | DMG_DIRECTION_DECR | DMG_STEP_TIME(7) | DMG_DUTY_50;
    REG_SND2FREQ = NOTE_G2 | NOTE_D3 | SND_RESET | DMG_FREQ_TIMED;
	

	// Find the first inactive bullet
	for (int i = 0; i < BULLETCOUNT; i++) {
		if (!bullets[i].active) {

			// Position the new bullet
			bullets[i].row = player.row;
			bullets[i].col = player.col + player.width/2 - bullets[i].width/2;

			// Take the bullet out of the pool
			bullets[i].active = 1;

			// Break out of the loop
			break;
		}
	}
}

// Handle every-frame actions of a bullet
void updateBullet(BULLET* a) {
	// If active, update; otherwise ignore
	if (a->active) {
		if (a->row + a->height-1 >= 0) {
			a->row += a->rdel;
		}
		else {
			a->active = 0;
		}
	}
}

// Draw a bullet
void drawBullet(BULLET* a) {
	if(a->active) {
		drawRect4(a->col, a->row, a->width, a->height, a->color);
	}
}

// Initialize the aliens
void initAliens() {
	int offset1 = SCREENWIDTH/16;
	int offset2 = SCREENWIDTH/16;
	int offset3 = SCREENWIDTH/16;
	int tpr1 = SCREENWIDTH - 16*6;
	int tpr2 = SCREENWIDTH - 16*6;
	int tpr3 = SCREENWIDTH - 16*6;
	int tpl1 = 0;
	int tpl2 = 0;
	int tpl3 = 0;
	for (int i = 0; i < ALIENCOUNT; i++) {
		aliens[i].fire = 0;
		aliens[i].bulletTimer = 20;
		aliens[i].isHit = 0;
		aliens[i].height = 16;
		aliens[i].width = 16;
		aliens[i].active = 1;
		aliens[i].cdel = 1;
		if (i < 6) {
			aliens[i].row = 10;
			aliens[i].col = offset1;
			offset1 += 16;
			aliens[i].turningPointR = tpr1;
			tpr1 += 16;
			aliens[i].turningPointL = tpl1;
			tpl1 += 16;
		} else if (i < 12) {
			aliens[i].row = 30;
			aliens[i].col = offset2;
			offset2 += 16;
			aliens[i].turningPointR = tpr2;
			tpr2 += 16;
			aliens[i].turningPointL = tpl2;
			tpl2 += 16;
		} else if (i < 18) {
			aliens[i].row = 50;
			aliens[i].col = offset3;
			offset3 += 16;
			aliens[i].turningPointR = tpr3;
			tpr3 += 16;
			aliens[i].turningPointL = tpl3;
			tpl3 += 16;
		}
	}
}

// Handle every-frame actions of a alien
void updateAlien(ALIEN* a) {
	if (a->active) {
		// if aliens touched the base defend line, then lost
		if (!a->isHit && a->row + a->height-1 > 120) {
			touchLineLost = 1;
			// Play sound for alien touching the baseline
			REG_SND4CNT = DMG_ENV_VOL(15) | 1 << 12 ; // 1/78 second and volume "1"
    		REG_SND4FREQ = DMG_FREQ_TIMED | 1 << 15 | 7 << 8;
		}

		// the alien start to approach the baseline
		if (a->fire && a->bulletTimer >= 40) {
			a->row += 9;
			a->bulletTimer = 0;
		}
		a->bulletTimer++;

		if (a->col == a->turningPointR || a->col == a->turningPointL) {
			a->cdel *= -1;
			a->row += 8;
		}

		// Move the alien
		a->col += a->cdel;

		// Handle alien-bullet collisions
		for (int i = 0; i < BULLETCOUNT; i++) {
			if (bullets[i].active && !a->isHit && collision(a->col, a->row, a->width, a->height,
				bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height)) {
					
				// play sound when an alien got hit by a bullet
				REG_SND4CNT = DMG_ENV_VOL(30) | 1 << 18 ;
   			 	REG_SND4FREQ = DMG_FREQ_TIMED | 1 << 15 | 0 | 7 << 6 | 1 << 3;

				// Put alien back in the pool
				bullets[i].active = 0;
				
				// Transform aliens
				a->isHit = 1;
				a->height = 0;
				a->width = 0;

				// Update the score
				aliensRemaining--;
				aliensHit++;
			}
		}
	}
}

// Draw a alien
void drawAlien(ALIEN* a) {
	if (a->active) {
		if (!a->isHit)
			drawImage4(a->col, a->row, a->width, a->height, small_imageBitmap);
		else
			drawRect4(a->col, a->row, a->width, a->height, BLACKID);
	}
}