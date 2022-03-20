
// Player/Claw Struct
typedef struct {
	int row, col, oldRow, oldCol, cdel, rdel, height, width;
	int stickLength;
	u16 color;
} PLAYER;

// Bomb Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int cdel;
	int height;
	int width;
	unsigned short color;
	char direction;
	char size;
	int touched;
	int active;
	int erased;
} BOMB;

// Constants
#define BOMBCOUNT 5

// Variables
extern PLAYER claw;
extern BOMB bomb[BOMBCOUNT];
extern int bombRemaining;
extern int lost;

// Prototypes
void initGame();
void updateGame();
void drawGame();
void drawBar();
void initClaw();
void updateClaw();
void drawClaw();
void initBomb();
void updateBomb(BOMB *);
void drawBomb(BOMB *);
