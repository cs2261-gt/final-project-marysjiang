
//{{BLOCK(bgPause)

//======================================================================
//
//	bgPause, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 137 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4384 + 2048 = 6944
//
//	Time-stamp: 2020-03-29, 21:40:38
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGPAUSE_H
#define GRIT_BGPAUSE_H

#define bgPauseTilesLen 4384
extern const unsigned short bgPauseTiles[2192];

#define bgPauseMapLen 2048
extern const unsigned short bgPauseMap[1024];

#define bgPausePalLen 512
extern const unsigned short bgPausePal[256];

#endif // GRIT_BGPAUSE_H

//}}BLOCK(bgPause)
