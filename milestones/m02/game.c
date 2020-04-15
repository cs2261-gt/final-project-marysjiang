#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "spritesheetNet.h"
// #include "spritesheet.h"

// player
ANISPRITE player;
int livesRemaining;

// bees
ANISPRITE bees;

// rocks
ANISPRITE rocks[ROCKCOUNT];

// shadow OAM
OBJ_ATTR shadowOAM[128];

enum { RIGHT = 0, LEFT = 1 };
int direction;

void initGame() {
    // DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen / 2);
    // DMANow(3, spritesheetPal, SPRITEPALETTE, 256);

    DMANow(3, spritesheetNetTiles, &CHARBLOCK[4], spritesheetNetTilesLen / 2);
    DMANow(3, spritesheetNetPal, SPRITEPALETTE, 256);

    direction = RIGHT;
    livesRemaining = LIVES;

    initPlayer();
    initBees();
    initRocks();
}

void updateGame() {
    updatePlayer();
    updateBees();

    for (int i = 0; i < ROCKCOUNT; i++) {
        updateRocks(&rocks[i]);
    }
}

void drawGame() {
    drawPlayer();
    drawBees();
    drawRocks();
}

void initPlayer() {
    player.row = 115;
    player.col = (SCREENWIDTH / 2) - (player.width / 2);
    player.rdel = 0;
    player.cdel = 2;
    player.width = 32;
    player.height = 32;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 3;
    player.aniState = RIGHT;
}

void updatePlayer() {
    if (BUTTON_PRESSED(BUTTON_LEFT) && (player.col > 0)) {
        direction = LEFT;
        player.col -= player.cdel;
    }
    if (BUTTON_HELD(BUTTON_LEFT) && (player.col > 0)) {
        direction = LEFT;
        player.col -= player.cdel;
    }

    if (BUTTON_PRESSED(BUTTON_RIGHT) && ((player.col - 1) < SCREENWIDTH)) {
        direction = RIGHT;
        player.col += player.cdel;
    }
    if (BUTTON_HELD(BUTTON_RIGHT) && ((player.col - 1) < SCREENWIDTH)) {
        direction = RIGHT;
        player.col += player.cdel;
    }
    
    animatePlayer();
}

void animatePlayer() {
    if (player.aniCounter % 8 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }
    
    if (BUTTON_PRESSED(BUTTON_RIGHT))  {
        player.aniState = RIGHT;
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        player.aniState = LEFT;
    }
    
    player.aniCounter++;
}

/**
* aniState: col in spritesheet
* curFrame: row in spritesheet
*/
void drawPlayer() {
    // shadowOAM[0].attr0 = player.row | ATTR0_SQUARE | ATTR0_4BPP;
    // shadowOAM[0].attr1 = player.col | ATTR1_LARGE;
    // shadowOAM[0].attr2 = ATTR2_TILEID(player.aniState * 8, player.curFrame * 8) | ATTR2_PALROW(0);

    shadowOAM[0].attr0 = player.row | ATTR0_SQUARE | ATTR0_4BPP;
    shadowOAM[0].attr1 = player.col | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_TILEID(player.aniState * 4, player.curFrame * 4) | ATTR2_PALROW(0);
}

void initBees() {
    bees.row = 110;
    bees.col = 10;
    bees.rdel = 0;
    bees.cdel = 0;
    bees.width = 32;
    bees.height = 32;
    bees.aniCounter = 0;
    bees.curFrame = 0;
    bees.numFrames = 2;
}

void updateBees() {
    // handles bee-player collision
    if (collision(bees.col, bees.row, bees.width, bees.height,
        player.col, player.row, player.width, player.height)) {
            livesRemaining = 0; // lose the game
    }

    animateBees();
}

void animateBees() {
    if (bees.aniCounter % 8 == 0) {
        bees.curFrame = (bees.curFrame + 1) % bees.numFrames;
    }

    bees.aniCounter++;
}

void drawBees() {
    shadowOAM[1].attr0 = bees.row | ATTR0_SQUARE | ATTR0_4BPP;
    shadowOAM[1].attr1 = bees.col | ATTR1_MEDIUM;
    shadowOAM[1].attr2 = ATTR2_TILEID((bees.aniState * 4) + 8, (bees.curFrame * 4) + 1) | ATTR2_PALROW(0);
}

void initRocks() {
    for (int i = 0; i < ROCKCOUNT; i++) {
        rocks[i].row = 140;
        rocks[i].col = 230;
        rocks[i].rdel = 0;
        rocks[i].cdel = 1;
        rocks[i].width = 8;
        rocks[i].height = 8;
        rocks[i].active = 0;
    }

    rocks[0].active = 1;
}

void updateRocks(ANISPRITE* a) {
    // move the rock while it's active
    // set it to inactive when it goes off the screen
    // while (a->active) {
    //     if ((a->col - 1) < 0) {
    //         a->active = 0;
    //     }

    //     a->col -= a->cdel;
    // }

    if (a->active) {
        if (collision(a->col, a->row, a->width, a->height,
            player.col, player.row, player.width, player.height)) {
                livesRemaining = 0;
        }
    }
}

void drawRocks() {
    for (int i = 0; i < ROCKCOUNT; i++) {
        if (rocks[i].active) {
            shadowOAM[2 + i].attr0 = rocks[i].row | ATTR0_SQUARE | ATTR0_4BPP;
            shadowOAM[2 + i].attr1 = rocks[i].col | ATTR1_TINY;
            shadowOAM[2 + i].attr2 = ATTR2_TILEID(8, 0) | ATTR2_PALROW(0);
        }
    }
}