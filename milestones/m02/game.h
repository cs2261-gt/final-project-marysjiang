// anisprite struct
typedef struct {
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int curFrame;
    int numFrames;
    int active;
    int caught;
} ANISPRITE;

// constants
#define ROCKCOUNT 3
#define BUGCOUNT 2
#define LIVES 3

// varaiables
extern ANISPRITE player;
extern ANISPRITE bees;
extern ANISPRITE rocks[ROCKCOUNT];
extern ANISPRITE bugs[BUGCOUNT];
extern int livesRemaining;

// game prototypes
void initGame();
void updateGame();
void drawGame();

// player prototypes
void initPlayer();
void updatePlayer();
void animatePlayer();
void drawPlayer();

// bee prototypes
void initBees();
void updateBees();
void animateBees();
void drawBees();

// rock prototypes
void initRocks();
void updateRocks(ANISPRITE *);
void drawRocks();

// bug prototypes
void initBugs();
void updateBugs(ANISPRITE *);
void drawBugs();
