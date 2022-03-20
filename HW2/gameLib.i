# 1 "gameLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "gameLib.c"
# 1 "gameLib.h" 1




typedef unsigned short u16;
# 25 "gameLib.h"
extern volatile unsigned short *videoBuffer;
# 40 "gameLib.h"
void setPixel(int col, int row, unsigned short color);
void drawRect(int col, int row, int width, int height, unsigned short color);
void fillScreen(unsigned short color);


void waitForVBlank();
# 66 "gameLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 78 "gameLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "gameLib.c" 2

volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int col, int row, unsigned short color) {
    videoBuffer[((row)*(240)+(col))] = color;
}
# 18 "gameLib.c"
void fillScreen(unsigned short color) {
    int j = 0;
    for (int i = 0; i < 38400; i++) {
        if (i != 0 && i % 240 == 0) {
            j += 1;
        }
        setPixel(i % 240, j, color);
    }
}

void waitForVBlank() {
    while ((*(volatile unsigned short *)0x4000006) >= 160);
    while ((*(volatile unsigned short *)0x4000006) < 160);
}

int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {

    return (rowA + heightA > rowB && rowA < rowB + heightB) && (colA + widthA > colB && colA < colB + widthB);
}
