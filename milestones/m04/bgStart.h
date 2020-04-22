
//{{BLOCK(bgStart)

//======================================================================
//
//	bgStart, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 65 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2080 + 2048 = 4640
//
//	Time-stamp: 2020-04-06, 16:32:23
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGSTART_H
#define GRIT_BGSTART_H

#define bgStartTilesLen 2080
extern const unsigned short bgStartTiles[1040];

#define bgStartMapLen 2048
extern const unsigned short bgStartMap[1024];

#define bgStartPalLen 512
extern const unsigned short bgStartPal[256];

#endif // GRIT_BGSTART_H

//}}BLOCK(bgStart)
