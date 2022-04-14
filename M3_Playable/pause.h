
//{{BLOCK(pause)

//======================================================================
//
//	pause, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 52 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1664 + 2048 = 4224
//
//	Time-stamp: 2022-03-18, 16:49:15
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSE_H
#define GRIT_PAUSE_H

#define pauseTilesLen 1664
extern const unsigned short pauseTiles[832];

#define pauseMapLen 2048
extern const unsigned short pauseMap[1024];

#define pausePalLen 512
extern const unsigned short pausePal[256];

#endif // GRIT_PAUSE_H

//}}BLOCK(pause)
