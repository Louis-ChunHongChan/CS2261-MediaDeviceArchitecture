#include "gameLib.h"

int screenWidth, screenHeight;
u16 buttons;
u16 oldButtons;
u16 TriangleColor, tamaColor, foodColor, bgColor;
// painter rectangle
int tamaRow, tamaCol, tamaOldRow, tamaOldCol, tamaSize, tamaWidth, tamaHeight;
int prevTriangleX, prevTriangleY, TriangleSize, TriangleX, TriangleY;
int food, foodX, foodY, foodSize, foodGone;
int time, drawUpdate;
int sizeIndex;
int t_size[] = {25, 35, 45, 15};
int end;
int cHeight1, cWidth1, cHeight2, cWidth2, cHeight3, cWidth3, cHeight4, cWidth4;

// Draw the last player sprite, a cat
void drawSprite4(int x, int y, int size, u16 color) {
    for (int i = 0; i < size; i++) {
        setPixel((x-size), (y+size)+i, color);
        setPixel((x+size/2), (y+size)+i, color);
    }
    for (int i = 1; i < size*2.3; i++) {
        setPixel(((x-size)+i), (y+size*2), color);
        if (i < size/1.2) {
            setPixel((x+size/2)+i, (y+size+size/3+3-1), color);
        }
    }
    for (int i = 0; i < size/3; i++) {
        setPixel((x-size+i+1), (y+size)+i, color);
        setPixel((x+size/2-1-i), (y+size)+i, color);
    }
    for (int i = 0; i < size/1.4; i++) {
        setPixel(((x-size+size/3+1)+i), (y+size+size/3), color);
    }
    setPixel((x-size+size/3+1), (y+size+size/3+3), color);
    int b = (x-size+size/3+1)+size/1.4;
    setPixel(b, (y+size+size/3+3), color);
    for (int i = 0; i < size/2; i++) {
        setPixel((x-size)+size/2, (y+size*2)+i, color);
        setPixel((x-size)+size, (y+size*2)+i, color);
        setPixel((x-size)+size*2, (y+size*2)+i, color);
        setPixel((x-size/3)+size, (y+size*2)+i, color);
    }
    int temp = (x+size/2)+size/1.2+1;
    for (int i = 0; i < size/3; i++) {
        setPixel(temp+i, (y+size+size/3+3-1)+i, color);
        setPixel(temp+i, y+size*2-i, color);
        setPixel(temp+size/3+i, (y+size+10)-i, color);
        setPixel(temp+size/3*2+i, (y+size+10)-size/3, color);
        setPixel(temp+size, (y+size+10)-size/3+i, color);
    }
    cHeight4 = size;
    cWidth4 = size*2;
}

// Draw the first player sprite, a pumpkin
void drawSprite1(int x, int y, int size, u16 color) {
    for (int i = 0; i < size/2; i++) {
        setPixel(x-size/2+1, y+size/2+1+i, color);
        setPixel(x-size/2-1, y+size/2+1+i, color);
        if (i < size/4) {
            setPixel(x-size/2-3+i, y+size/2, color);
        }
    }
    for (int i = 0; i < 2; i++) {
        setPixel((x-size+i), (y+size+5), color);
        setPixel((x-size+i), (y+size+6), color);
        setPixel((x-size/2+i), (y+size+5), color);
        setPixel((x-size/2+i), (y+size+6), color);
    }
    for (int i = 0; i < size; i++) {
        if (i%2 == 0) {
            setPixel(x-size+i, y+size+10, color);
        }
        else {
            setPixel(x-size+i, y+size+11, color);
        }
    }
    for (int i = 0; i < size; i++) {
        setPixel((x-size+i), (y+size), color);
        setPixel((x-size+i), (y+size*2-7), color);
        if (i < size/2.5) {
            setPixel((x-size-1-i), (y+size+1), color);
            setPixel((x+i), (y+size+1), color);
            setPixel((x+i), (y+size+2+size-10), color);
            setPixel((x-size-1-i), (y+size+2+size-10), color);
        }
    }
    for (int i = 0; i < size-10; i++) {
        setPixel((x-size-11), (y+size+2+i), color);
        setPixel((x+size/2-2), (y+size+2+i), color);
    }
    
    cHeight1 = size;
    cWidth1 = size*1.5;
    
}

// Draw the second player sprite, a heart
void drawSprite2(int x, int y, int size, u16 color) {
    for (int i = 0; i < size/2; i++) {
        setPixel((x-size+i), (y+size+i), color);
        setPixel((x-2-i), (y+size+i), color);
    }
    for (int i = 0; i < size/4+1; i++) {
        setPixel(x-size+i, y+size-i, color);
        setPixel(x-size+size/4+i, y+size-size/4+i, color);
        setPixel(x-size+size/2+i, y+size-i, color);
        setPixel(x-size+size/2+size/4+i, y+size-size/4+i, color);
    }
    cHeight2 = size/2;
    cWidth2 = size;
}

// Draw the third player sprite, a demon
void drawSprite3(int x, int y, int size, u16 color) {
    // Upper half
    for (int i = 0; i < size/4; i++) {
        setPixel((x-size/2-i), (y+size+i), color);
        setPixel((x-size/2-i), (y+size-i), color);
        setPixel((x-size+3+i), (y+size+i), color);
        setPixel((x-size+3+i), (y+size-i), color);
    }
    for (int i = 0; i < size/5; i++) {
        setPixel((x-size*3/4+2+i), (y+size-size/4), color);
        setPixel((x-size*3/4-i), (y+size-size/4), color);
        setPixel((x-size/2-1+i), (y+size-size/4+i), color);
        setPixel((x-size+3-i), (y+size-size/4+i), color);
        setPixel((x-size/2-1+size/5+i), (y+size-3-i), color);
        setPixel((x-size-5-i), (y+size-3-i), color);
    }
    cHeight3 = size/2;
    cWidth3 = size;
}

void drawTriangle(int x, int y, int size, u16 color) {
    int shift = 0;
    for (int j = 0; j < size; j++) {
        for (int i = 0; i < size/2-shift; i++) {
            setPixel(x-i, y+j, color);
            setPixel(x+i, y+j, color);
        }
        shift++;
    }
}

void collisionDetect() {
    // Check if the tamagotchi collide with falling triangles
    if (collision(tamaCol-t_size[sizeIndex], tamaRow+t_size[sizeIndex], tamaWidth, tamaHeight, TriangleX, TriangleY, TriangleSize/2, TriangleSize/2)) {
        reset();
	}
    // if the food got hit by the obstacle, it's gone
    if (collision(TriangleX, TriangleY, TriangleSize*2.5, TriangleSize*2, foodX, foodY, foodSize, foodSize)) {
        drawFood(foodX, foodY, foodSize, bgColor);
        foodGone = 1;
    }
}

// Draw food
void drawFood(int x, int y, int size, u16 color) {
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            setPixel(x+j, y+i, color);
        }
    }
}

// initialize up the display and the game "objects"
void initialize() {
	REG_DISPCTL = MODE3 | BG2_ENABLE;

    foodColor = bgColor;

    time = 0;
    foodGone = 1;

    drawUpdate = 0;
    food = 0;
    foodSize = 10;

	buttons = BUTTONS;
	oldButtons = 0;	

	TriangleColor = RED;

	bgColor = WHITE;
	fillScreen(bgColor);

	TriangleSize = 30;
    int r = rand() % 120;
	TriangleX = r;
	TriangleY = -5;

    sizeIndex = 0;
    tamaSize = t_size[sizeIndex];
	tamaRow = (SCREENHEIGHT / 2);
	tamaCol = (SCREENWIDTH / 2);
	tamaOldRow = tamaRow;
	tamaOldCol = tamaCol;

    end = 0;
}

// Update the triangles' position so that the triangles will keep falling to the bottom
void updateTrianglePosition(int time) {
    prevTriangleX = TriangleX;
    prevTriangleY = TriangleY;
    int timestep = 2;
    if (time % timestep == 0 && time != 0) {
        TriangleY += 4;
    }
}

// Select a random color for food 
u16 foodColorUpdate() {
    int r = rand() % 31;
    int g = rand() % 31;
    int b = rand() % 31;
    return COLOR(r, g, b);
}

// Update and draw new food position
void updateFoodPosition(int time) {
    // Only update food position if the food is gone (hit by player or triangles)
    if (foodGone) {
        int foodTime = 150;
        if (time % foodTime == 0 && time != 0) {
            int rx = rand() % 150;
            int ry = (rand() % (140 - 20 + 1)) + 20;
            foodX = rx;
            foodY = ry;
            drawFood(rx, ry, foodSize, foodColorUpdate());
            foodGone = 0;
        }
    }

    // These are to create tamagotchi offset
    if (drawUpdate == 0) {
        tamaHeight = cHeight1;
        tamaWidth = cWidth1;
    }
    if (drawUpdate == 1) {
        tamaHeight = cHeight2;
        tamaWidth = cWidth2;
    }
    if (drawUpdate == 2) {
        tamaHeight = cHeight3;
        tamaWidth = cWidth3;
    }
    if (drawUpdate == 3) {
        tamaHeight = cHeight4;
        tamaWidth = cWidth4;
    }


    // Tamagotchi to hit food
    if (collision(tamaCol-t_size[sizeIndex], tamaRow+t_size[sizeIndex], tamaWidth, tamaHeight, foodX, foodY, foodSize, foodSize)) {
        fillScreen(bgColor);
        drawUpdate += 1;
        foodX = -1;
        foodY = -1;
        sizeIndex += 1;
        tamaSize = t_size[sizeIndex];
        foodGone = 1;
	}
    
    
}

// reset the game to the beginning state
void reset() {
    initialize();
}

// check if the triangle hits boundary
void checkTriangle() {
    int r = rand() % 150;
    while (r - TriangleSize*1.5 < 0 || r + TriangleSize*1.5 > SCREENWIDTH) {
        r = rand() % 150;
    }
	// boundary checks
	if (TriangleY > SCREENHEIGHT) { // bottom
		drawTriangle(TriangleX, TriangleY, TriangleSize, bgColor);
        TriangleY = -5;
        TriangleX = r;
	}
}

void update() {
    tamaOldRow = tamaRow;
	tamaOldCol = tamaCol;

	if (BUTTON_HELD(BUTTON_UP)) {
        if (tamaRow + t_size[sizeIndex] > 0) {
            tamaRow -= 3;
        }
	}
	if (BUTTON_HELD(BUTTON_DOWN)) {
        if (tamaRow < SCREENHEIGHT - t_size[sizeIndex]*2) {
            tamaRow += 3;
        }
        
	}
	if (BUTTON_HELD(BUTTON_LEFT)) {
		if (tamaCol > 0) {
            tamaCol -= 3;
        }
	}
	if (BUTTON_HELD(BUTTON_RIGHT)) {
        if (tamaCol < SCREENWIDTH - t_size[sizeIndex]/2) {
            tamaCol += 3;
        }
		
	}

}

void draw() {
    // erase the previous painter rectangle location
    if (tamaOldCol != tamaCol || tamaOldRow != tamaRow) {
        if (drawUpdate == 0) {
            drawSprite1(tamaOldCol, tamaOldRow, tamaSize, bgColor);
        } 
        else if (drawUpdate == 1) {
            drawSprite2(tamaOldCol, tamaOldRow, tamaSize, bgColor);
        }
        else if (drawUpdate == 2) {
            drawSprite3(tamaOldCol, tamaOldRow, tamaSize, bgColor);
        } 
        else if (drawUpdate == 3) {
            drawSprite4(tamaOldCol, tamaOldRow, tamaSize, bgColor);
        }
        else {
            end = 1;
        }
    }

    if (drawUpdate == 0) {
        drawSprite1(tamaCol, tamaRow, tamaSize, YELLOW);
    }
    else if (drawUpdate == 1) {
        drawSprite2(tamaCol, tamaRow, tamaSize, MAGENTA);
    }
    else if (drawUpdate == 2) {
        drawSprite3(tamaCol, tamaRow, tamaSize, BLUE);
    }
    else if (drawUpdate == 3) {
        drawSprite4(tamaCol, tamaRow, tamaSize, BLACK);
    }
    else {
        end = 1;
    }

    // draw obstacles
    if (prevTriangleX != TriangleX || prevTriangleY != TriangleY) {
        drawTriangle(prevTriangleX, prevTriangleY, TriangleSize, bgColor);
    }
    drawTriangle(TriangleX, TriangleY, TriangleSize, TriangleColor);
    
}

void endState() {
    fillScreen(BLACK);
}

int main() {
    initialize();
    while (1) {
        oldButtons = buttons;
        buttons = BUTTONS;
        update();
        collisionDetect();
        checkTriangle();
        waitForVBlank();
        updateTrianglePosition(time);
        updateFoodPosition(time);
        draw();
        time++;
        if (end) {
            endState();
            break;
        }
	}
    return 0;
}