
//{{BLOCK(bgInstructions)

//======================================================================
//
//	bgInstructions, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 252 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8064 + 2048 = 10624
//
//	Time-stamp: 2020-04-22, 15:36:09
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BGINSTRUCTIONS_H
#define GRIT_BGINSTRUCTIONS_H

#define bgInstructionsTilesLen 8064
extern const unsigned short bgInstructionsTiles[4032];

#define bgInstructionsMapLen 2048
extern const unsigned short bgInstructionsMap[1024];

#define bgInstructionsPalLen 512
extern const unsigned short bgInstructionsPal[256];

#endif // GRIT_BGINSTRUCTIONS_H

//}}BLOCK(bgInstructions)
