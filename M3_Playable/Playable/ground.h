
//{{BLOCK(ground)

//======================================================================
//
//	ground, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 29 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 928 + 2048 = 3488
//
//	Time-stamp: 2022-04-12, 20:38:18
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GROUND_H
#define GRIT_GROUND_H

#define groundTilesLen 928
extern const unsigned short groundTiles[464];

#define groundMapLen 2048
extern const unsigned short groundMap[1024];

#define groundPalLen 512
extern const unsigned short groundPal[256];

#endif // GRIT_GROUND_H

//}}BLOCK(ground)
