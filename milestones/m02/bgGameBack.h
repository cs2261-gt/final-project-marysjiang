
//{{BLOCK(bgGameBack)

//======================================================================
//
//	bgGameBack, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 41 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1312 + 2048 = 3872
//
//	Time-stamp: 2020-04-06, 17:03:40
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGGAMEBACK_H
#define GRIT_BGGAMEBACK_H

#define bgGameBackTilesLen 1312
extern const unsigned short bgGameBackTiles[656];

#define bgGameBackMapLen 2048
extern const unsigned short bgGameBackMap[1024];

#define bgGameBackPalLen 512
extern const unsigned short bgGameBackPal[256];

#endif // GRIT_BGGAMEBACK_H

//}}BLOCK(bgGameBack)
