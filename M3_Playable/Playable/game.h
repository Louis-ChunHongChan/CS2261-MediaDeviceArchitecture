// Constants
#define MAPHEIGHT 512
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
    int hasKey;
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
	int climbed;
	int active;
	int jumpedOver;
    int faceLeft;
} CRAZY;

typedef struct {
    int row;
    int col;
    int height;
    int width;
} ARROW;

typedef struct {
	int row;
	int col;
	int width;
	int height;
	int active;
} UI;

extern int life;
extern int delivered;
extern int score;
extern int won, lost, paused;
extern int time_m, time_s;

// Prototypes
void initArrow();
void drawArrow();
void initGame();
void updateGame();
void initGuy();
void initDoor();
void initKey();
void initBoots();
void initShirt();
void initBubble();
void initKong();
void initCustomer();
void initCrazy();
void initHammer();
void initHeart();
void initScore();
void animateKong();
void animateGuy();
void animateCustomer();
void animateCrazy();
void updateGuy();
void updateKey();
void updateBoots();
void updateShirt();
void updateDoor();
void updateBubble();
void updateKong();
void updateCustomer();
void updateCrazy();
void updateHeart();
void drawGuy();
void drawKong();
void drawDoor();
void drawBubble();
void drawKey();
void drawBoots();
void drawShirt();
void drawCustomer();
void drawCrazy();
void drawHammer();
void drawHeart();
void drawScore();
void drawGame();
void displayTime();
void interruptHandler(void);
void enableTimerInterrupts(void);
void setupInterrupts(void);
int collisionCheck(unsigned char *collisionMap, int mapWidth, int col, int row, int width, int height, int colShift, int rowShift);
int collisionLadderCheck(unsigned char *collisionMap, int mapWidth, int col, int row, int width, int height, int colShift, int rowShift);