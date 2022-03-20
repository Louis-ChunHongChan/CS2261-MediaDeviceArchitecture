# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "Lab06Lib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "Lab06Lib.h"
extern unsigned short *videoBuffer;
# 85 "Lab06Lib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "Lab06Lib.h"
void hideSprites();
# 179 "Lab06Lib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 190 "Lab06Lib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 230 "Lab06Lib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "main.c" 2

# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 4 "main.c" 2

void initialize();

OBJ_ATTR shadowOAM[128];

int main() {

    initialize();

 while(1) {



  shadowOAM[0].attr0 = 50 | (0<<13) | (0<<14);
  shadowOAM[0].attr1 = 56 | (1<<14);
  shadowOAM[0].attr2 = ((0)<<12) | ((0)*32+(15 * 2));

  shadowOAM[1].attr0 = 50 | (0<<13) | (0<<14);
  shadowOAM[1].attr1 = 72 | (1<<14);
  shadowOAM[1].attr2 = ((0)<<12) | ((0)*32+(0));

  shadowOAM[2].attr0 = 50 | (0<<13) | (0<<14);
  shadowOAM[2].attr1 = 88 | (1<<14);
  shadowOAM[2].attr2 = ((0)<<12) | ((2)*32+(4 * 2));

  shadowOAM[3].attr0 = 50 | (0<<13) | (0<<14);
  shadowOAM[3].attr1 = 104 | (1<<14);
  shadowOAM[3].attr2 = ((0)<<12) | ((2)*32+(2 * 2));

  shadowOAM[4].attr0 = 50 | (0<<13) | (0<<14);
  shadowOAM[4].attr1 = 120 | (1<<14);
  shadowOAM[4].attr2 = ((0)<<12) | ((0)*32+(4 * 2));
# 54 "main.c"
  waitForVBlank();

  DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);
 }

 return 0;
}


void initialize() {

 DMANow(3, spritesheetPal, ((unsigned short *)0x5000200), 256);
 DMANow(3, spritesheetTiles, &((charblock *)0x6000000)[4], 32768/4);


 for(int i = 0; i < 128; i++) {
        shadowOAM[i].attr0 = (2<<8);
    }
 waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    (*(unsigned short *)0x4000000) = 0 |(1<<12);

}
