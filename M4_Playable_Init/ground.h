
//{{BLOCK(ground)

//======================================================================
//
//	ground, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 3 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 96 + 4096 = 4704
//
//	Time-stamp: 2022-04-13, 10:14:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GROUND_H
#define GRIT_GROUND_H

#define groundTilesLen 96
extern const unsigned short groundTiles[48];

#define groundMapLen 4096
extern const unsigned short groundMap[2048];

#define groundPalLen 512
extern const unsigned short groundPal[256];

#endif // GRIT_GROUND_H

//}}BLOCK(ground)
