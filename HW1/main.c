#define RGB(R, G, B) ((R) | (G) << 5 | (B) << 10)
#define REG_DISPCNT (*(volatile unsigned short *)0x04000000)
#define MODE3 3
#define BG2_ENABLE (1<<10)
#define VIDEO_BUFFER ((volatile unsigned short *)0x06000000)
typedef unsigned short u16;
typedef unsigned char u8;

#define SetPixel(x, y, val) (VIDEO_BUFFER[(x) + (y)*240] = val)

#define REG_KEYINPUT (*(volatile u16*)0x04000130)
#define KEY_A        0x0001
#define KEY_B        0x0002
#define KEY_SELECT   0x0004
#define KEY_START    0x0008
#define KEY_RIGHT    0x0010
#define KEY_LEFT     0x0020
#define KEY_UP       0x0040
#define KEY_DOWN     0x0080
#define KEY_R        0x0100
#define KEY_L        0x0200
#define KEY_DOWN_NOW(key) (~(REG_KEYINPUT) & key)

int ballSize, robotSize, robotX, robotY;
int screenWidth, screenHeight;
int frame, prevFrame;
volatile u16* scanlineCounter = (u16*) 0x04000006;

void drawDiscoBall(int x, int y, int size, u16 color) {
    // Draw the stick
    for (int i = 0; i < y; i++) {
        SetPixel(x, 0+i, RGB(10, 10, 25));
    }
    // Set the ball as square first
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            SetPixel((x-size/2)+i, (y-size/2)+j, color);
        }
    }
    // Cut the ball shape out
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3-i; j++) {
            SetPixel((x-size/2)+j, (y-size/2)+i, RGB(0, 0, 0));  // Upper left
            SetPixel((x+size/2)-j, (y-size/2)+i, RGB(0, 0, 0));  // Upper right
            SetPixel((x-size/2)+j, (y+size/2)-i, RGB(0, 0, 0));  // Lower left
            SetPixel((x+size/2)-j, (y+size/2)-i, RGB(0, 0, 0));  // Lower right
        }
    }
}

void drawFrame1(int x, int y, int size, u16 color) {
    drawDiscoBall(screenWidth / 2, screenHeight / 4, 17, color);
    // draw out the whole body for sculpting
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size*1.5; j++) {
            SetPixel((x-size/2)+i, (y-size/2-5)+j, color);
        }
    }

    // draw legs
    for (int i = size; i < size*2.3; i++) {
        for (int j = 0; j < size/3; j++) {
            SetPixel((x-size/2)+j, (y-size/2)+i, color);
            SetPixel((x+size/2)-j, (y-size/2)+i, color);
        }
    }

    // add eyes
    for (int i = 0; i < size/2; i++) {
        for (int j = 0; j < 12; j++) {
            if (color == RGB(0, 0, 0)) {
                SetPixel((x+size/2+1)+i, (y-size/2)+j, RGB(0, 0, 0));
            }
            else {
                SetPixel((x+size/2+1)+i, (y-size/2)+j, RGB(31, 31, 31));
            }
        }
    }
    
    // add backpack
    for (int i = 10; i < size*1.25; i++) {
        for (int j = 1; j < size*0.75; j++) {
            SetPixel((x-size/2-1)-j, (y-size/2)+i, color);
        }
    }
    for (int i = 10; i < size*1.25; i++) {
        SetPixel((x-size/2)-1, (y-size/2)+i, RGB(0, 0, 0));
    }
}

void drawFrame2(int x, int y, int size, u16 color) {
    drawDiscoBall(screenWidth / 2, screenHeight / 4, 17, color);
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size*1.5+3; j++) {
            SetPixel((x-size/2)+i, (y-size/2+3)+j, color);
        }
    }

    // draw legs
    int shift = 0;
    for (int i = size+8; i < size*2.3; i++) {
        for (int j = 0; j < size/3; j++) {
            SetPixel((x-size/2)+j+shift, (y-size/2+5)+i, color);
            SetPixel((x+size/2)-j-shift, (y-size/2+5)+i, color);
        }
        shift++;
    }

    // add eyes
    for (int i = 0; i < size/2; i++) {
        for (int j = 0; j < 12; j++) {
            if (color == RGB(0, 0, 0)) {
                SetPixel((x+size/2+1)+i, (y-size/2+8)+j, RGB(0, 0, 0));
            }
            else {
                SetPixel((x+size/2+1)+i, (y-size/2+8)+j, RGB(31, 31, 31));
            }
        }
    }
    
    // add backpack
    for (int i = 10; i < size*1.25+3; i++) {
        for (int j = 1; j < size*0.75; j++) {
            SetPixel((x-size/2-1)-j, (y-size/2+3)+i, color);
        }
    }
    for (int i = 10; i < size*1.25; i++) {
        SetPixel((x-size/2)-1, (y-size/2)+i, RGB(0, 0, 0));
    }
}

void drawFrame3(int x, int y, int size, u16 color) {
    drawDiscoBall(screenWidth / 2, screenHeight / 4, 17, color);
    // draw out the whole body for sculpting
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size*1.5; j++) {
            SetPixel((x-size/2)+i, (y-size/2-5)+j, color);
        }
    }

    // draw legs
    int shift = 0;
    for (int i = size; i < size*2; i++) {
        for (int j = 0; j < size/3; j++) {
            SetPixel((x-size/2)+j-shift, (y-size/2+8)+i, color);
            SetPixel((x+size/2)-j+shift, (y-size/2+8)+i, color);
        }
        shift++;
    }

    // add eyes
    for (int i = 0; i < size/2; i++) {
        for (int j = 0; j < 12; j++) {
            if (color == RGB(0, 0, 0)) {
                SetPixel((x+size/2+1)+i, (y-size/2)+j, RGB(0, 0, 0));
            }
            else {
                SetPixel((x+size/2+1)+i, (y-size/2)+j, RGB(31, 31, 31));
            }
        }
    }
    
    // add backpack
    for (int i = 10; i < size*1.25; i++) {
        for (int j = 1; j < size*0.75; j++) {
            SetPixel((x-size/2-1)-j, (y-size/2)+i, color);
        }
    }
    for (int i = 10; i < size*1.25; i++) {
        SetPixel((x-size/2)-1, (y-size/2)+i, RGB(0, 0, 0));
    }
}

void drawFrame4(int x, int y, int size, u16 color) {
    drawDiscoBall(screenWidth / 2, screenHeight / 4, 17, color);
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size*1.5+10; j++) {
            SetPixel((x-size/2)+i, (y-size/2+10)+j, color);
        }
    }

    // draw legs
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size/3; j++) {
            SetPixel((x-size/2-1)-i, (y+size*2-10)+j, color);
            SetPixel((x+size/2+1)+i, (y+size*2-10)+j, color);
        }
    }

    // add eyes
    for (int i = 0; i < size/2; i++) {
        for (int j = 0; j < 12; j++) {
            if (color == RGB(0, 0, 0)) {
                SetPixel((x+size/2+1)+i, (y-size/2+15)+j, RGB(0, 0, 0));
            }
            else {
                SetPixel((x+size/2+1)+i, (y-size/2+15)+j, RGB(31, 31, 31));
            }
        }
    }
    
    // add backpack
    for (int i = 10; i < size*1.25+10; i++) {
        for (int j = 1; j < size*0.75; j++) {
            SetPixel((x-size/2-1)-j, (y-size/2+10)+i, color);
        }
    }
    for (int i = 10; i < size*1.25; i++) {
        SetPixel((x-size/2)-1, (y-size/2)+i, RGB(0, 0, 0));
    }
}

void waitForVBlank() {
    while (*scanlineCounter >= 160);  // wait until current VBlank ends
    while (*scanlineCounter < 160);  // wait until next VBlank starts
}

// load the next frame
void updateAnimation() {
    prevFrame = frame;
    frame = frameFromInputs();
}

int frameFromInputs() {
    if (KEY_DOWN_NOW(KEY_A)) {
        frame++;
    }
    if (KEY_DOWN_NOW(KEY_B)) {
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
        return RGB(31, 31, 0);
    case 1:
        return RGB(31, 0, 0);
    case 2:
        return RGB(31, 0, 31);
    case 3:
        return RGB(0, 31, 0);
    default:
        return RGB(0, 0, 0);
    }
}

int main() {
    REG_DISPCNT = MODE3 | BG2_ENABLE;
    screenWidth = 240;
    screenHeight = 160;
    robotX = screenWidth / 2;
    robotY = screenHeight / 2;
    robotSize = 27;

    while (1) {
        // change animation here
        updateAnimation();
        waitForVBlank();
        if (prevFrame != frame) {
            framePlayer(prevFrame, robotX, robotY, robotSize, RGB(0, 0, 0));
        }
        framePlayer(frame, robotX, robotY, robotSize, colorSelector(frame));
        // drawSquare(prevBallX, prevBallY, ballSize, RGB(0, 0, 0));
        // drawFrame1(robotX, robotY, robotSize, RGB(31, 31, 0));
        // drawFrame2(robotX, robotY, robotSize, RGB(31, 0, 0));
        // drawFrame3(robotX, robotY, robotSize, RGB(31, 0, 31));
        // drawFrame4(robotX, robotY, robotSize, RGB(0, 31, 0));
    }
    return 0;
}