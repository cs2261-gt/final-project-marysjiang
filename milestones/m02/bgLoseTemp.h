
//{{BLOCK(bgLoseTemp)

//======================================================================
//
//	bgLoseTemp, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 12 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 384 + 2048 = 2944
//
//	Time-stamp: 2020-04-07, 15:07:38
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGLOSETEMP_H
#define GRIT_BGLOSETEMP_H

#define bgLoseTempTilesLen 384
extern const unsigned short bgLoseTempTiles[192];

#define bgLoseTempMapLen 2048
extern const unsigned short bgLoseTempMap[1024];

#define bgLoseTempPalLen 512
extern const unsigned short bgLoseTempPal[256];

#endif // GRIT_BGLOSETEMP_H

//}}BLOCK(bgLoseTemp)
