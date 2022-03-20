# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2

int screenWidth, screenHeight;
u16 buttons;
u16 oldButtons;
u16 TriangleColor, tamaColor, foodColor, bgColor;

int tamaRow, tamaCol, tamaOldRow, tamaOldCol, tamaSize, tamaWidth, tamaHeight;
int prevTriangleX, prevTriangleY, TriangleSize, TriangleX, TriangleY;
int food, foodX, foodY, foodSize, foodGone;
int time, drawUpdate;
int sizeIndex;
int t_size[] = {25, 35, 45, 15};
int end;
int cHeight1, cWidth1, cHeight2, cWidth2, cHeight3, cWidth3, cHeight4, cWidth4;


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


void drawSprite3(int x, int y, int size, u16 color) {

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

    if (collision(tamaCol-t_size[sizeIndex], tamaRow+t_size[sizeIndex], tamaWidth, tamaHeight, TriangleX, TriangleY, TriangleSize/2, TriangleSize/2)) {
        reset();
 }

    if (collision(TriangleX, TriangleY, TriangleSize*2.5, TriangleSize*2, foodX, foodY, foodSize, foodSize)) {
        drawFood(foodX, foodY, foodSize, bgColor);
        foodGone = 1;
    }
}


void drawFood(int x, int y, int size, u16 color) {
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            setPixel(x+j, y+i, color);
        }
    }
}


void initialize() {
 (*(volatile unsigned short *)0x4000000) = 3 | (1<<10);

    foodColor = bgColor;

    time = 0;
    foodGone = 1;

    drawUpdate = 0;
    food = 0;
    foodSize = 10;

 buttons = (*(volatile unsigned short *)0x04000130);
 oldButtons = 0;

 TriangleColor = ((31) | (0)<<5 | (0)<<10);

 bgColor = ((31) | (31)<<5 | (31)<<10);
 fillScreen(bgColor);

 TriangleSize = 30;
    int r = rand() % 120;
 TriangleX = r;
 TriangleY = -5;

    sizeIndex = 0;
    tamaSize = t_size[sizeIndex];
 tamaRow = (160 / 2);
 tamaCol = (240 / 2);
 tamaOldRow = tamaRow;
 tamaOldCol = tamaCol;

    end = 0;
}


void updateTrianglePosition(int time) {
    prevTriangleX = TriangleX;
    prevTriangleY = TriangleY;
    int timestep = 2;
    if (time % timestep == 0 && time != 0) {
        TriangleY += 4;
    }
}


u16 foodColorUpdate() {
    int r = rand() % 31;
    int g = rand() % 31;
    int b = rand() % 31;
    return ((r) | (g)<<5 | (b)<<10);
}


void updateFoodPosition(int time) {

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


void reset() {
    initialize();
}


void checkTriangle() {
    int r = rand() % 150;
    while (r - TriangleSize*1.5 < 0 || r + TriangleSize*1.5 > 240) {
        r = rand() % 150;
    }

 if (TriangleY > 160) {
  drawTriangle(TriangleX, TriangleY, TriangleSize, bgColor);
        TriangleY = -5;
        TriangleX = r;
 }
}

void update() {
    tamaOldRow = tamaRow;
 tamaOldCol = tamaCol;

 if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
        if (tamaRow + t_size[sizeIndex] > 0) {
            tamaRow -= 3;
        }
 }
 if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        if (tamaRow < 160 - t_size[sizeIndex]*2) {
            tamaRow += 3;
        }

 }
 if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
  if (tamaCol > 0) {
            tamaCol -= 3;
        }
 }
 if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        if (tamaCol < 240 - t_size[sizeIndex]/2) {
            tamaCol += 3;
        }

 }

}

void draw() {

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
        drawSprite1(tamaCol, tamaRow, tamaSize, ((31) | (31)<<5 | (0)<<10));
    }
    else if (drawUpdate == 1) {
        drawSprite2(tamaCol, tamaRow, tamaSize, ((31) | (0)<<5 | (31)<<10));
    }
    else if (drawUpdate == 2) {
        drawSprite3(tamaCol, tamaRow, tamaSize, ((0) | (0)<<5 | (31)<<10));
    }
    else if (drawUpdate == 3) {
        drawSprite4(tamaCol, tamaRow, tamaSize, 0);
    }
    else {
        end = 1;
    }


    if (prevTriangleX != TriangleX || prevTriangleY != TriangleY) {
        drawTriangle(prevTriangleX, prevTriangleY, TriangleSize, bgColor);
    }
    drawTriangle(TriangleX, TriangleY, TriangleSize, TriangleColor);

}

void endState() {
    fillScreen(0);
}

int main() {
    initialize();
    while (1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);
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
