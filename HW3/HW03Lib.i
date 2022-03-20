# 1 "HW03Lib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "HW03Lib.c"
# 1 "HW03Lib.h" 1




typedef unsigned short u16;
# 25 "HW03Lib.h"
extern volatile unsigned short *videoBuffer;
# 42 "HW03Lib.h"
void setPixel(int col, int row, unsigned short color);

void drawLargeBomb(int col, int row, int width, int height, unsigned short color);
void drawSmallBomb(int col, int row, int width, int height, unsigned short color);
void drawClawModel(int col, int row, int width, int height, int stickLength, unsigned short color);

void fillScreen(unsigned short color);


void waitForVBlank();
# 71 "HW03Lib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 81 "HW03Lib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "HW03Lib.c" 2

volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int col, int row, unsigned short color) {
    videoBuffer[((row)*(240)+(col))] = color;
}

void drawLargeBomb(int col, int row, int width, int height, unsigned short color) {
    for (int i = 0; i < width / 3; i++) {
        setPixel(col + i, row + i, color);

        setPixel(col + i, row + height/2, color);
        setPixel(col + width/3*2 + i, row + height/2, color);

        setPixel(col + i, row + height-1 - i, color);
        setPixel(col + width/3*2 + i, row + height/3*2 + i, color);

        setPixel(col + width/3*2 + i, row + width/3 - 1 - i, color);

        setPixel(col + width/3, row + height/3 + i, color);
        setPixel(col + width/3*2, row + height/3 + i, color);

        setPixel(col + width/3+3, row + height/3 - 3 - i, color);
        setPixel(col + width/3+3, row + height/3*2 + 3 + i, color);

        if (i < 3) {
            setPixel(col + width/3 + i, row + height/3 - i, color);
            setPixel(col + width/3 + i, row + height/3*2 + i, color);
        }

        if (i >= 3) {
            setPixel(col + width/3 + i, row + i, color);
            setPixel(col + width/3 + i, row + height - i, color);
        }

    }
}

void drawSmallBomb(int col, int row, int width, int height, unsigned short color) {
    for (int i = 0; i < width / 3; i++) {
        setPixel(col + i, row + i, color);

        setPixel(col + i, row + height/2, color);
        setPixel(col + width/3*2 + i, row + height/2, color);

        setPixel(col + i, row + height-1 - i, color);
        setPixel(col + width/3*2 + i, row + height/3*2 + i, color);

        setPixel(col + width/3*2 + i, row + width/3 - 1 - i, color);

        setPixel(col + width/3, row + height/3 + i, color);
        setPixel(col + width/3*2, row + height/3 + i, color);

        setPixel(col + width/3+3, row + height/3 - 2 - i, color);
        setPixel(col + width/3+3, row + height/3*2 + 2 + i, color);

        if (i < 3) {
            setPixel(col + width/3 + i, row + height/3 - i, color);
            setPixel(col + width/3 + i, row + height/3*2 + i, color);
        }

        if (i >= 3) {
            setPixel(col + width/3 + i, row + i, color);
            setPixel(col + width/3 + i, row + height - i, color);
        }

    }

}


void drawClawModel(int col, int row, int width, int height, int stickLength, unsigned short color) {
    for (int i = 0; i < height/3; i++) {
        setPixel(col + i, row + height/3 + width/2 + i, color);
        setPixel(col + width -1 - i, row + height/3 + width/2 + i, color);
    }
    for (int i = 0; i < width/2; i++) {
        setPixel(col + width/2 - i, row + height/3 + i, color);
        setPixel(col + width/2 + i, row + height/3 + i, color);
    }
    for (int i = 0; i < stickLength; i++) {
        if (row == 0) {
            setPixel(col + width/2, row + i, color);
        } else {
            setPixel(col + width/2, row + height/3 - i, color);
        }
    }

}

void fillScreen(unsigned short color) {
    for(int i = 0; i < 240 * 160; i++) {
        videoBuffer[i] = color;
    }
}

void waitForVBlank() {
    while((*(volatile unsigned short *)0x4000006) > 160);
    while((*(volatile unsigned short *)0x4000006) < 160);
}

int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {
    return
    rowA + heightA >= rowB
    && rowA <= rowB + heightB
    && colA + widthA >= colB
    && colA <= colB + widthB;
}
