
#include "lab2lib.h"

// prototypes
void initialize();
void update();
void draw();

// buttons
unsigned short buttons;
unsigned short oldButtons;

// background
unsigned short bgColor;

// height and width for all colorful rectangles
int cHeight, cWidth;

// colorful rectangle 1
int c1Row, c1Col;
unsigned short c1Color;

// colorful rectangle 2
int c2Row, c2Col;
unsigned short c2Color;

// colorful rectangle 3
int c3Row, c3Col;
unsigned short c3Color;

// colorful rectangle 4
int c4Row, c4Col;
unsigned short c4Color;

// painter rectangle
int pRow, pCol, pOldRow, pOldCol, pRDel, pCDel, pHeight, pWidth;
unsigned short pColor;

int main() {

	initialize();
 
	while (1) {
		oldButtons = buttons;
		buttons = BUTTONS;
		update();
		waitForVBlank();
		draw();
	}
}

// sets up the display and the game "objects"
void initialize() {
	REG_DISPCTL = MODE3 | BG2_ENABLE;

	// TODO #3.1: intialize your button variables
	buttons = BUTTONS;
	oldButtons = 0;	

	// initialize rectangle colors
	// START UNCOMMENT #1
	pColor = BLUE;
	c1Color = MAGENTA;
	c2Color = YELLOW;
	c3Color = GREEN;
	c4Color = CYAN;
	// END UNCOMMENT #1

	//initialize background color and draw background
	// START UNCOMMENT #3
	bgColor = WHITE;
	fillScreen(bgColor);
	// START UNCOMMENT #3

	// initialize color rectangles
	cHeight = 30;
	cWidth = 30;

	c1Row = 30;
	c1Col = 30;	

	c2Row = 30;
	c2Col = 180;	

	c3Row = 100;
	c3Col = 180;

	c4Row = 100;
	c4Col = 30;						

	// initialize painter rectangle
	pHeight = 15;
	pWidth = 15;
	pRow = (SCREENHEIGHT / 2) - (pHeight / 2);
	pCol = (SCREENWIDTH / 2) - (pWidth / 2);
	pOldRow = pRow;
	pOldCol = pCol;
	pRDel = 1;
	pCDel = 1;
}

// performs all of the game's calculations
void update() {
	// boundary checks
	if (pCol < 0) { // left
		pOldCol = pCol;
		pCol = 0;
	}
	if (pCol + pWidth > SCREENWIDTH) { // right
		pOldCol = pCol;
		pCol = (SCREENWIDTH - 1) - (pWidth - 1);
	}
	if (pRow < 0) { // top
		pOldRow = pRow;
		pRow = 0;
	}
	if (pRow + pHeight > SCREENHEIGHT) { // bottom
		pOldRow = pRow;
		pRow = (SCREENHEIGHT - 1) - (pHeight - 1);
	}

	if (BUTTON_HELD(BUTTON_UP)) {
		pRow--;
	}
	if (BUTTON_HELD(BUTTON_DOWN)) {
		pRow++;
	}
	if (BUTTON_HELD(BUTTON_LEFT)) {
		pCol--;
	}
	if (BUTTON_HELD(BUTTON_RIGHT)) {
		pCol++;
	}

	if (collision(pCol, pRow, pWidth, pHeight, c1Col, c1Row, cWidth, cHeight)) {
		pColor = c1Color;
	}
	if (collision(pCol, pRow, pWidth, pHeight, c2Col, c2Row, cWidth, cHeight)) {
		pColor = c2Color;
	}
	if (collision(pCol, pRow, pWidth, pHeight, c3Col, c3Row, cWidth, cHeight)) {
		pColor = c3Color;
	}
	if (collision(pCol, pRow, pWidth, pHeight, c4Col, c4Row, cWidth, cHeight)) {
		pColor = c4Color;
	}
}

// performs all of the writing to screen
void draw() {
	// draw the rectangles to screen
	// START UNCOMMENT #2

	// erase the previous painter rectangle location
	// TODO #5.2: add a condition that stops the previous painter rectangle
	// location from being erased if the select button is held
	if (!BUTTON_HELD(BUTTON_SELECT)) {
		drawRect(pOldCol, pOldRow, pWidth, pHeight, bgColor);
	}

	// draw the new painter rectangle location
	drawRect(pCol, pRow, pWidth, pHeight, pColor);

	// draw obstacles
	drawRect(c1Col, c1Row, cWidth, cHeight, c1Color);
	drawRect(c2Col, c2Row, cWidth, cHeight, c2Color);
	drawRect(c3Col, c3Row, cWidth, cHeight, c3Color);
	drawRect(c4Col, c4Row, cWidth, cHeight, c4Color);
	// END UNCOMMENT #2

	// update old variables
	pOldRow = pRow;
	pOldCol = pCol;
}
