
//{{BLOCK(level)

//======================================================================
//
//	level, 256x768@4, 
//	+ palette 256 entries, not compressed
//	+ 519 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x96 
//	Total size: 512 + 16608 + 6144 = 23264
//
//	Time-stamp: 2022-04-19, 13:57:12
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LEVEL_H
#define GRIT_LEVEL_H

#define levelTilesLen 16608
extern const unsigned short levelTiles[8304];

#define levelMapLen 6144
extern const unsigned short levelMap[3072];

#define levelPalLen 512
extern const unsigned short levelPal[256];

#endif // GRIT_LEVEL_H

//}}BLOCK(level)
