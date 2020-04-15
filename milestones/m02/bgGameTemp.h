
//{{BLOCK(bgGameTemp)

//======================================================================
//
//	bgGameTemp, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 13 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 416 + 2048 = 2976
//
//	Time-stamp: 2020-04-07, 14:23:08
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGGAMETEMP_H
#define GRIT_BGGAMETEMP_H

#define bgGameTempTilesLen 416
extern const unsigned short bgGameTempTiles[208];

#define bgGameTempMapLen 2048
extern const unsigned short bgGameTempMap[1024];

#define bgGameTempPalLen 512
extern const unsigned short bgGameTempPal[256];

#endif // GRIT_BGGAMETEMP_H

//}}BLOCK(bgGameTemp)
