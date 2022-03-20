# 1 "lab01.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "lab01.c"
# 24 "lab01.c"
void setPixel(int, int, unsigned short);
void drawRect(int, int, unsigned short);
void drawParallelogram(int, int, unsigned short);



volatile unsigned short *videoBuffer = (unsigned short *)0x6000000;
# 41 "lab01.c"
int main() {

    (*(volatile unsigned short *)0x4000000) = 3 | (1<<10);






    drawRect(25, 25, ((31) | (0)<<5 | (31)<<10));
    drawRect(1, 1, ((31) | (31)<<5 | (31)<<10));


    drawParallelogram(100, 95, ((31) | (0)<<5 | (0)<<10));

    while(1);
}


void setPixel(int col, int row, unsigned short color) {


    videoBuffer[((row)*(240)+(col))] = color;

}

void drawRect(int col, int row, unsigned short color) {


    for (int i = 0; i < 20; i++) {
        for (int n = 0; n < 10; n++) {
            setPixel(col + i, row + n, color);
        }
    }
}

void drawParallelogram(int col, int row, unsigned short color) {


    int shift = 0;
    for (int i = 0; i < 20; i++) {
        for (int n = 0; n < 10; n++) {
            setPixel(col + n + shift, row + i, color);
        }
        shift++;
    }
}
