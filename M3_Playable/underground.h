
//{{BLOCK(underground)

//======================================================================
//
//	underground, 256x512@4, 
//	+ palette 256 entries, not compressed
//	+ 19 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x64 
//	Total size: 512 + 608 + 4096 = 5216
//
//	Time-stamp: 2022-04-13, 20:28:46
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_UNDERGROUND_H
#define GRIT_UNDERGROUND_H

#define undergroundTilesLen 608
extern const unsigned short undergroundTiles[304];

#define undergroundMapLen 4096
extern const unsigned short undergroundMap[2048];

#define undergroundPalLen 512
extern const unsigned short undergroundPal[256];

#endif // GRIT_UNDERGROUND_H

//}}BLOCK(underground)
