
//{{BLOCK(instruction)

//======================================================================
//
//	instruction, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 256 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8192 + 2048 = 10752
//
//	Time-stamp: 2022-04-02, 08:16:50
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTION_H
#define GRIT_INSTRUCTION_H

#define instructionTilesLen 8192
extern const unsigned short instructionTiles[4096];

#define instructionMapLen 2048
extern const unsigned short instructionMap[1024];

#define instructionPalLen 512
extern const unsigned short instructionPal[256];

#endif // GRIT_INSTRUCTION_H

//}}BLOCK(instruction)
