// Constants
#define MAPHEIGHT 256
#define MAPWIDTH 256

typedef struct {
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
	int collided;
} ANISPRITE;

typedef struct {
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
	int dropped;
	int active;
	int jumpedOver;
} BARREL;

typedef struct {
	int row;
	int col;
	int width;
	int height;
	int active;
} UI;

extern int life;
extern int rescued;
extern int score;
extern int nextLevel;

// Prototypes
void initGame();
void initGame2();
void updateGame();
void updateGame2();
void initMario();
void initMario2();
void initKong();
void initKong2();
void initPauline();
void initPauline2();
void initBarrel();
void initBarrel2();
void initHammer();
void initHammer2();
void initHeart();
void initHeart2();
void initScore();
void initScore2();
void animateKong();
void animateMario();
void animatePauline();
void animateBarrel();
void updateMario();
void updateKong();
void updatePauline();
void updateBarrel();
void updateBarrel2();
void updateHeart();
void drawMario();
void drawKong();
void drawPauline();
void drawBarrel();
void drawHammer();
void drawHeart();
void drawScore();
void drawGame();
int collisionCheck(unsigned char *collisionMap, int mapWidth, int col, int row, int width, int height, int colShift, int rowShift);