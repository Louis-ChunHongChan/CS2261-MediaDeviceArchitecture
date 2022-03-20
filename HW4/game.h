// Player Struct
typedef struct {
	int row;
	int col;
	int cdel;
	int height;
	int width;
	unsigned char color;
	int bulletTimer;
	int cDirection; // So the bullet knows which cdel to take
} PLAYER;

// Bullet Struct
typedef struct {
	int row;
	int col;
	int rdel;
	int height;
	int width;
	unsigned char color;
	int active;
} BULLET;

typedef struct {
	int row;
	int col;
	int rdel;
	int height;
	int width;
	unsigned char color;
	int active;
} ENEMYBULLET;

// Alien Struct
typedef struct {
	int row;
	int col;
	int cdel;
	int height;
	int width;
	int isHit;
	int turningPointR;
	int turningPointL;
	int fire;
	int bulletTimer;
	int active;
} ALIEN;

// Constants
#define BULLETCOUNT 5
#define ALIENCOUNT 18

// Variables
extern PLAYER player;
extern BULLET bullets[BULLETCOUNT];
extern ALIEN aliens[ALIENCOUNT];
extern int aliensRemaining;
extern int aliensHit;
extern int touchLineLost;

// Custom Game Colors
#define NUMCOLORS 6
// This does an enum trick to make them the last indeces of the palette
enum {BLACKID=(256-NUMCOLORS), PORTAGEID, PERSIANID, VIOREDID, WHITEID, GRAYID};
extern unsigned short colors[NUMCOLORS];

// Prototypes
void initGame();
void updateGame();
void drawGame();
void drawBar();
void initPlayer();
void updatePlayer();
void drawPlayer();
void initBullets();
void fireBullet();
void updateBullet(BULLET *);
void drawBullet(BULLET *);
void initAliens();
void updateAlien(ALIEN *);
void drawAlien(ALIEN *);