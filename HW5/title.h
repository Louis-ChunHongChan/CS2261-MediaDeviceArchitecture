
//{{BLOCK(title)

//======================================================================
//
//	title, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 269 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8608 + 2048 = 11168
//
//	Time-stamp: 2022-03-13, 17:20:57
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TITLE_H
#define GRIT_TITLE_H

#define titleTilesLen 8608
extern const unsigned short titleTiles[4304];

#define titleMapLen 2048
extern const unsigned short titleMap[1024];

#define titlePalLen 512
extern const unsigned short titlePal[256];

#endif // GRIT_TITLE_H

//}}BLOCK(title)
