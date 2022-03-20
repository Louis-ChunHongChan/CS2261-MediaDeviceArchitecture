# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"





typedef unsigned short u16;
typedef unsigned char u8;
# 24 "main.c"
int ballSize, robotSize, robotX, robotY;
int screenWidth, screenHeight;
int frame, prevFrame;
volatile u16* scanlineCounter = (u16*) 0x04000006;

void drawDiscoBall(int x, int y, int size, u16 color) {

    for (int i = 0; i < y; i++) {
        (((volatile unsigned short *)0x06000000)[(x) + (0+i)*240] = ((10) | (10) << 5 | (25) << 10));
    }

    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2)+i) + ((y-size/2)+j)*240] = color);
        }
    }

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3-i; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2)+j) + ((y-size/2)+i)*240] = ((0) | (0) << 5 | (0) << 10));
            (((volatile unsigned short *)0x06000000)[((x+size/2)-j) + ((y-size/2)+i)*240] = ((0) | (0) << 5 | (0) << 10));
            (((volatile unsigned short *)0x06000000)[((x-size/2)+j) + ((y+size/2)-i)*240] = ((0) | (0) << 5 | (0) << 10));
            (((volatile unsigned short *)0x06000000)[((x+size/2)-j) + ((y+size/2)-i)*240] = ((0) | (0) << 5 | (0) << 10));
        }
    }
}

void drawFrame1(int x, int y, int size, u16 color) {
    drawDiscoBall(screenWidth / 2, screenHeight / 4, 17, color);

    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size*1.5; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2)+i) + ((y-size/2-5)+j)*240] = color);
        }
    }


    for (int i = size; i < size*2.3; i++) {
        for (int j = 0; j < size/3; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2)+j) + ((y-size/2)+i)*240] = color);
            (((volatile unsigned short *)0x06000000)[((x+size/2)-j) + ((y-size/2)+i)*240] = color);
        }
    }


    for (int i = 0; i < size/2; i++) {
        for (int j = 0; j < 12; j++) {
            if (color == ((0) | (0) << 5 | (0) << 10)) {
                (((volatile unsigned short *)0x06000000)[((x+size/2+1)+i) + ((y-size/2)+j)*240] = ((0) | (0) << 5 | (0) << 10));
            }
            else {
                (((volatile unsigned short *)0x06000000)[((x+size/2+1)+i) + ((y-size/2)+j)*240] = ((31) | (31) << 5 | (31) << 10));
            }
        }
    }


    for (int i = 10; i < size*1.25; i++) {
        for (int j = 1; j < size*0.75; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2-1)-j) + ((y-size/2)+i)*240] = color);
        }
    }
    for (int i = 10; i < size*1.25; i++) {
        (((volatile unsigned short *)0x06000000)[((x-size/2)-1) + ((y-size/2)+i)*240] = ((0) | (0) << 5 | (0) << 10));
    }
}

void drawFrame2(int x, int y, int size, u16 color) {
    drawDiscoBall(screenWidth / 2, screenHeight / 4, 17, color);
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size*1.5+3; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2)+i) + ((y-size/2+3)+j)*240] = color);
        }
    }


    int shift = 0;
    for (int i = size+8; i < size*2.3; i++) {
        for (int j = 0; j < size/3; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2)+j+shift) + ((y-size/2+5)+i)*240] = color);
            (((volatile unsigned short *)0x06000000)[((x+size/2)-j-shift) + ((y-size/2+5)+i)*240] = color);
        }
        shift++;
    }


    for (int i = 0; i < size/2; i++) {
        for (int j = 0; j < 12; j++) {
            if (color == ((0) | (0) << 5 | (0) << 10)) {
                (((volatile unsigned short *)0x06000000)[((x+size/2+1)+i) + ((y-size/2+8)+j)*240] = ((0) | (0) << 5 | (0) << 10));
            }
            else {
                (((volatile unsigned short *)0x06000000)[((x+size/2+1)+i) + ((y-size/2+8)+j)*240] = ((31) | (31) << 5 | (31) << 10));
            }
        }
    }


    for (int i = 10; i < size*1.25+3; i++) {
        for (int j = 1; j < size*0.75; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2-1)-j) + ((y-size/2+3)+i)*240] = color);
        }
    }
    for (int i = 10; i < size*1.25; i++) {
        (((volatile unsigned short *)0x06000000)[((x-size/2)-1) + ((y-size/2)+i)*240] = ((0) | (0) << 5 | (0) << 10));
    }
}

void drawFrame3(int x, int y, int size, u16 color) {
    drawDiscoBall(screenWidth / 2, screenHeight / 4, 17, color);

    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size*1.5; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2)+i) + ((y-size/2-5)+j)*240] = color);
        }
    }


    int shift = 0;
    for (int i = size; i < size*2; i++) {
        for (int j = 0; j < size/3; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2)+j-shift) + ((y-size/2+8)+i)*240] = color);
            (((volatile unsigned short *)0x06000000)[((x+size/2)-j+shift) + ((y-size/2+8)+i)*240] = color);
        }
        shift++;
    }


    for (int i = 0; i < size/2; i++) {
        for (int j = 0; j < 12; j++) {
            if (color == ((0) | (0) << 5 | (0) << 10)) {
                (((volatile unsigned short *)0x06000000)[((x+size/2+1)+i) + ((y-size/2)+j)*240] = ((0) | (0) << 5 | (0) << 10));
            }
            else {
                (((volatile unsigned short *)0x06000000)[((x+size/2+1)+i) + ((y-size/2)+j)*240] = ((31) | (31) << 5 | (31) << 10));
            }
        }
    }


    for (int i = 10; i < size*1.25; i++) {
        for (int j = 1; j < size*0.75; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2-1)-j) + ((y-size/2)+i)*240] = color);
        }
    }
    for (int i = 10; i < size*1.25; i++) {
        (((volatile unsigned short *)0x06000000)[((x-size/2)-1) + ((y-size/2)+i)*240] = ((0) | (0) << 5 | (0) << 10));
    }
}

void drawFrame4(int x, int y, int size, u16 color) {
    drawDiscoBall(screenWidth / 2, screenHeight / 4, 17, color);
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size*1.5+10; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2)+i) + ((y-size/2+10)+j)*240] = color);
        }
    }


    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size/3; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2-1)-i) + ((y+size*2-10)+j)*240] = color);
            (((volatile unsigned short *)0x06000000)[((x+size/2+1)+i) + ((y+size*2-10)+j)*240] = color);
        }
    }


    for (int i = 0; i < size/2; i++) {
        for (int j = 0; j < 12; j++) {
            if (color == ((0) | (0) << 5 | (0) << 10)) {
                (((volatile unsigned short *)0x06000000)[((x+size/2+1)+i) + ((y-size/2+15)+j)*240] = ((0) | (0) << 5 | (0) << 10));
            }
            else {
                (((volatile unsigned short *)0x06000000)[((x+size/2+1)+i) + ((y-size/2+15)+j)*240] = ((31) | (31) << 5 | (31) << 10));
            }
        }
    }


    for (int i = 10; i < size*1.25+10; i++) {
        for (int j = 1; j < size*0.75; j++) {
            (((volatile unsigned short *)0x06000000)[((x-size/2-1)-j) + ((y-size/2+10)+i)*240] = color);
        }
    }
    for (int i = 10; i < size*1.25; i++) {
        (((volatile unsigned short *)0x06000000)[((x-size/2)-1) + ((y-size/2)+i)*240] = ((0) | (0) << 5 | (0) << 10));
    }
}

void waitForVBlank() {
    while (*scanlineCounter >= 160);
    while (*scanlineCounter < 160);
}


void updateAnimation() {
    prevFrame = frame;
    frame = frameFromInputs();
}

int frameFromInputs() {
    if ((~((*(volatile u16*)0x04000130)) & 0x0001)) {
        frame++;
    }
    if ((~((*(volatile u16*)0x04000130)) & 0x0002)) {
        frame--;
    }
    return frame;
}

void framePlayer(int frame, int x, int y, int size, u16 color) {
    int count = frame;
    if (count < 0) {
        count = 4 - abs(count) % 4;
    }
    switch ((count) % 4)
    {
    case 0:
        drawFrame1(x, y, size, color);
        break;
    case 1:
        drawFrame2(x, y, size, color);
        break;
    case 2:
        drawFrame3(x, y, size, color);
        break;
    case 3:
        drawFrame4(x, y, size, color);
        break;
    default:
        break;
    }
}

u16 colorSelector(int frame) {
    int count = frame;
    if (count < 0) {
        count = 4 - abs(count) % 4;
    }
    switch ((count) % 4)
    {
    case 0:
        return ((31) | (31) << 5 | (0) << 10);
    case 1:
        return ((31) | (0) << 5 | (0) << 10);
    case 2:
        return ((31) | (0) << 5 | (31) << 10);
    case 3:
        return ((0) | (31) << 5 | (0) << 10);
    default:
        return ((0) | (0) << 5 | (0) << 10);
    }
}

int main() {
    (*(volatile unsigned short *)0x04000000) = 3 | (1<<10);
    screenWidth = 240;
    screenHeight = 160;
    robotX = screenWidth / 2;
    robotY = screenHeight / 2;
    robotSize = 27;

    while (1) {

        updateAnimation();
        waitForVBlank();
        if (prevFrame != frame) {
            framePlayer(prevFrame, robotX, robotY, robotSize, ((0) | (0) << 5 | (0) << 10));
        }
        framePlayer(frame, robotX, robotY, robotSize, colorSelector(frame));





    }
    return 0;
}
