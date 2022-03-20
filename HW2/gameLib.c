#include "gameLib.h"

volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;

void setPixel(int col, int row, unsigned short color) {
    videoBuffer[OFFSET(col, row, SCREENWIDTH)] = color;
}

// void drawRect(int col, int row, int width, int height, unsigned short color) {
//     // TODO #1: implement this function
//     for (int i = 0; i < width; i++) {
//         for (int n = 0; n < height; n++) {
//             setPixel(col + i, row + n, color);
//         }
//     }
// }

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
    while (SCANLINECOUNTER >= 160);
    while (SCANLINECOUNTER < 160);
}

int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {
    // TODO #5.0: Implement this function
    return (rowA + heightA > rowB && rowA < rowB + heightB) && (colA + widthA > colB && colA < colB + widthB);
}