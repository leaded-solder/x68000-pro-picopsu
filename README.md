## Introduction
This is a replacement power supply board for the Sharp X68000 PRO desktop computer from 1989. It uses a PicoPSU and an off-board 12VDC power supply to provide the power rails, and handles the unique soft-power-on logic of the X68Ks.

The main benefits of this supply versus the original are:
 - Brand-new board with modern quality control, undamaged by capacitor leakage or wear-and-tear;
 - Optional "Standby" and "Power Good" lights for debugging;
 - Support for 3-wire fans (tachometer is unused) through an optional 3-pin fan header

No trademark infringement is intended, and logos are used for informational purposes only.

## Assembly
Before purchasing anything, including the fabrication of this board, first disassemble your PRO and verify your power supply. It should look like this:

TODO: PSU shell picture

Although it is unclear why or how, it seems like some PRO units in Japan have been converted to use a "Tetris-piece" supply from a tower model, and the wiring harness colours will vary. Additionally, this board will not fit that style of power supply case; use the mattsoft board instead.

TODO: BOM
TODO: Actual assembly steps

It is strongly recommended to crimp the computer's wiring harness with ferrules before inserting them into the screw terminals. Doing so will [improve the reliability of a high-current connection](https://www.youtube.com/watch?v=bJk0mzaATI4&ab_channel=efixx), and also reduce the risk of shorting between pins. Ferrule crimpers, complete with ferrule kits, are inexpensive on most online marketplaces.

## Version History
 * v0.2: Fix AC/DC converter holes. Fix unused 74LS04 gates. Move ATX connector for more "hand room" around it. Remove thermal reliefs for power pours.
 * v0.1: Initial version. AC/DC converter footprint holes did not line up.

## Credits
Thanks to [mattsoft from the nfggames forum](https://nfggames.com/forum2/index.php?topic=6510.0) for the original idea and implementation for the "Tetris-piece" X68000 OG/ACE power supply, including much of the BOM for this one.

Thanks to [Tim Maxwell's ATX Breakout project](http://timmaxwell.org/pages/atx-breakout/) for contributing the symbol for the ATX connector.

Thanks to Dave Park for advice on thermal reliefs and reliable usage of the 74LS04.
