
//{{BLOCK(gameBg2)

//======================================================================
//
//	gameBg2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 21 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 672 + 2048 = 3232
//
//	Time-stamp: 2022-03-19, 17:40:01
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEBG2_H
#define GRIT_GAMEBG2_H

#define gameBg2TilesLen 672
extern const unsigned short gameBg2Tiles[336];

#define gameBg2MapLen 2048
extern const unsigned short gameBg2Map[1024];

#define gameBg2PalLen 512
extern const unsigned short gameBg2Pal[256];

#endif // GRIT_GAMEBG2_H

//}}BLOCK(gameBg2)
