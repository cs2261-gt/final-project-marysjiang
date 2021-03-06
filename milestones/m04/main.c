/*========= BOB STANS RISE UP!!! =========*/
/* === What's been finished!: ===
* - at least two animated sprites
* - simulatenous bgs
* - game states
* - lose state
* - ability to catch bugs and jump over rocks
* - health
* - music / sfx
* - sprites
*
* === What needs to be done: ===
* - fix the gameplay bugs
* - implement the cheat (it'll probably be if Bob catches three bugs, 
*   he'll put on a beekeeper uniform and won't be damaged by bugs or rocks)
*       - draw bob in beekeeper uniform
* - maybe include a score system (if I have time)
* - fix the weird flickering at the bottom of the screen
*
* === Bugs: ===
* - Bob will lose health even when there are no bugs or rocks being drawn
* - Collisions sometimes won't damage Bob
* - the net gets stuck if updateRocks() and updateBugs() check for the cheat
* - sometimes rocks and bugs will appear halfway across the screen (need to fix
*   spawning)
*
* === How to play: ===
* Use the LEFT and RIGHT buttons to move Bob. Press the B button to use the
* net and catch bugs. Press UP to jump over the rocks. Avoid the bees on the
* left side of the screen.
*
* Activate the cheat by catching three bugs (nothing happens right now).
*
*/

#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "bgStart.h"
#include "bgInstructions.h"
#include "bgLose.h"
#include "bgPause.h"
#include "spritesheet.h"
#include "bgGameBack.h"
#include "bgGameFront.h"
#include "bubblegumKK.h"
#include "goKKRider.h"
#include "bossaKK.h"
#include "rainy.h"

// prototypes
void initialize();

// state prototypes
void goToStart();
void goToInstructions();
void goToGame();
void goToPause();
void goToLose();

void start();
void instructions();
void game();
void pause();
void lose();

// game states
enum {START, INSTRUCTIONS, GAME, PAUSE, LOSE};
int state;

// buttons
unsigned short buttons;
unsigned short oldButtons;

// sounds
SOUND soundA;
SOUND soundB;

// random seed
int seed;

// determines game state
int livesRemaining;

// shadowOAM
OBJ_ATTR shadowOAM[128];

int main() {
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = BUTTONS;

        switch (state) {
            case START:
                start();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case LOSE:
                lose();
                break;    
        }
    }
}

// set up GBA
void initialize() {

    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;

    REG_BG1CNT = BG_4BPP | BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(28);
    REG_BG0CNT = BG_4BPP | BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(30);

    buttons = BUTTONS;
    oldButtons = 0;
    
    setupSounds();
    setupInterrupts();

    goToStart();
}

// set up start state
void goToStart() {
    REG_DISPCTL = BG1_ENABLE;
    REG_BG1HOFF = 0;

    DMANow(3, bgStartPal, PALETTE, 256);
    DMANow(3, bgStartTiles, &CHARBLOCK[0], bgStartTilesLen / 2);
    DMANow(3, bgStartMap, &SCREENBLOCK[28], bgStartMapLen / 2);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    waitForVBlank();

    playSoundA(bubblegumKK, BUBBLEGUMKKLEN, 1);

    state = START;

    seed = 0;
}

// run start state for each frame
void start() {
    seed++;

    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        srand(seed);

        goToInstructions();
    }
}

// set up instructions state
void goToInstructions() {
    REG_DISPCTL = BG1_ENABLE;
    REG_BG1HOFF = 0;

    DMANow(3, bgInstructionsPal, PALETTE, 256);
    DMANow(3, bgInstructionsTiles, &CHARBLOCK[0], bgInstructionsTilesLen / 2);
    DMANow(3, bgInstructionsMap, &SCREENBLOCK[28], bgInstructionsMapLen / 2);

    waitForVBlank();

    state = INSTRUCTIONS;
}

// run instructions state
void instructions() {
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSoundA();
		playSoundA(goKKRider, GOKKRIDERLEN, 1);

        goToGame();
        initGame();
    }
}

// set up game state
void goToGame() {    
    REG_DISPCTL = BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;

    DMANow(3, bgGameBackPal, PALETTE, 256);
    DMANow(3, bgGameBackTiles, &CHARBLOCK[0], bgGameBackTilesLen / 2);
    DMANow(3, bgGameBackMap, &SCREENBLOCK[28], bgGameBackMapLen / 2);
    
    // DMANow(3, bgGameFrontPal, PALETTE, 256);
    DMANow(3, bgGameFrontTiles, &CHARBLOCK[1], bgGameFrontTilesLen / 2);
    DMANow(3, bgGameFrontMap, &SCREENBLOCK[30], bgGameFrontMapLen / 2);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    waitForVBlank();

    state = GAME;
}

// runs game state for each frame
void game() {
    updateGame();

    REG_BG1HOFF = hOff;
    REG_BG0HOFF = hOff / 2;

    drawGame();
    
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSoundA();
		playSoundB(bossaKK, BOSSAKKLEN, 1);
        
        goToPause();
    }

    if (livesRemaining == 0) {
        stopSoundA();
        stopSoundB();
        playSoundA(rainy, RAINYLEN, 1);

        goToLose();
    }
}

// set up pause state
void goToPause() {
    REG_DISPCTL = BG1_ENABLE;
    REG_BG1HOFF = 0;

    DMANow(3, bgPausePal, PALETTE, 256);
    DMANow(3, bgPauseTiles, &CHARBLOCK[0], bgPauseTilesLen / 2);
    DMANow(3, bgPauseMap, &SCREENBLOCK[28], bgPauseMapLen / 2);
    
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    waitForVBlank();

    state = PAUSE;
}

// run pause state each frame
void pause() {
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSoundB();
        unpauseSoundA();

        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        stopSoundB();
        playSoundA(bubblegumKK, BUBBLEGUMKKLEN, 1);

        goToStart();
    }
}

// set up lose state
void goToLose() {
    REG_DISPCTL = BG1_ENABLE;
    REG_BG1HOFF = 0;

    DMANow(3, bgLosePal, PALETTE, 256);
    DMANow(3, bgLoseTiles, &CHARBLOCK[0], bgLoseTilesLen / 2);
    DMANow(3, bgLoseMap, &SCREENBLOCK[28], bgLoseMapLen / 2);
    
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);
    waitForVBlank();

    state = LOSE;
}

// run lose state for each frame
void lose() {
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSoundA();
        playSoundA(bubblegumKK, BUBBLEGUMKKLEN, 1);

        goToStart();
    }
}