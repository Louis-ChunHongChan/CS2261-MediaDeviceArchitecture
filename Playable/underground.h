
//{{BLOCK(underground)

//======================================================================
//
//	underground, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 18 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 576 + 2048 = 3136
//
//	Time-stamp: 2022-04-03, 16:49:17
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_UNDERGROUND_H
#define GRIT_UNDERGROUND_H

#define undergroundTilesLen 576
extern const unsigned short undergroundTiles[288];

#define undergroundMapLen 2048
extern const unsigned short undergroundMap[1024];

#define undergroundPalLen 512
extern const unsigned short undergroundPal[256];

#endif // GRIT_UNDERGROUND_H

//}}BLOCK(underground)
