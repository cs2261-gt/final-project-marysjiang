
//{{BLOCK(bgWinTemp)

//======================================================================
//
//	bgWinTemp, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 10 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 320 + 2048 = 2880
//
//	Time-stamp: 2020-04-07, 15:06:17
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGWINTEMP_H
#define GRIT_BGWINTEMP_H

#define bgWinTempTilesLen 320
extern const unsigned short bgWinTempTiles[160];

#define bgWinTempMapLen 2048
extern const unsigned short bgWinTempMap[1024];

#define bgWinTempPalLen 512
extern const unsigned short bgWinTempPal[256];

#endif // GRIT_BGWINTEMP_H

//}}BLOCK(bgWinTemp)
