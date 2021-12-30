## Introduction
This is a replacement power supply board for the Sharp X68000 PRO desktop computer from 1989. It uses a PicoPSU and an off-board 12VDC power supply to provide the power rails, and handles the unique soft-power-on logic of the X68Ks.

The main benefits of this supply versus the original are:
 - Brand-new board with modern quality control, undamaged by capacitor leakage or wear-and-tear;
 - Optional "Standby" and "Power Good" lights for debugging;
 - Support for 3-wire fans (tachometer is unused) through an optional 3-pin fan header;
 - Depending on the off-board supply used, it supports multiple wall voltages such as Canadian 120V, instead of just Japanese 100V. The Meanwell EPS-65S-12, for instance, claims support for 80 to 264VAC. No step-down converter is necessary.

No trademark infringement is intended, and logos are used for informational purposes only.

## Safety Warning
Please note that this board is produced as a hobbyist project. I am not a professional electrical engineer, and I cannot make any guarantees regarding the electrical safety of this board once installed. If you do find safety issues with the board or its assembly procedure, please let me know immediately.

Additionally, if you are uncomfortable or nervous with building an electrical appliance that plugs into high voltage, please do not attempt the assembly and use of this board.

## Compatibility
Before purchasing anything, including the fabrication of this board, first disassemble your PRO and verify your power supply. It should look like this:

![An X68000 PRO power supply case lying on the floor of my garage.](/assets/x68000-pro-power-supply-on-floor.jpg)

Although it is unclear why or how, it seems like some PRO units in Japan have been converted to use a "Tetris-piece" supply from a tower model, and the wiring harness colours will vary. Additionally, this board will not fit that style of power supply case; [use the mattsoft board instead](https://github.com/mattsoft/X68K_Pico_PSU_v2).

## Bill of Materials

| Component | Source link          | Comments |
|-----------|----------------------|----------|
| 12V DC power supply (I used a Meanwell EPS-65S-12) | [Digi-Key 1866-1733-ND](https://www.digikey.ca/en/products/detail/mean-well-usa-inc/EPS-65S-12/7703210) | Accepts a 3"x2" or 4"x2" supply |
| PicoPSU   | | I used an 80W model, be aware of the power limit (W) of the 12V supply. |
| A 3-prong electrical cord | | I cut up an Apple MagSafe extension cord for mine |
| A ring terminal for the ground prong of the cord | TODO | |
| Rubber strain-relief grommet for the power cord (recommended) | TODO | |
| 74LS04 or 74HCT04 (DIP) | [Digi-Key 
296-2083-5-ND](https://www.digikey.ca/en/products/detail/texas-instruments/CD74HCT04E/38238) | |
| 2x 7-pin screw terminals | [Digi-Key 277-1582-ND](https://www.digikey.ca/en/products/detail/phoenix-contact/1935213/568619) | Please use ferrule crimps (see below) |
| 24-pin ATX connector | [Digi-Key WM3811-ND](https://www.digikey.ca/en/products/detail/molex/0039281243/356033) | 20-pin can also be used |
| 3-pin fan header | [Digi-Key WM19538-ND](https://www.digikey.ca/en/products/detail/molex/0038006293/3160035) | 2-pin or a regular 0.1" pin header can also be used |
| 4.7kΩ through-hole resistor | TODO | |
| 0.1µF through-hole capacitor | TODO | |
| 2x 100Ω through-hole resistors (optional) | TODO | For troubleshooting LEDs |
| 2x through-hole green LEDs (optional) | TODO | For troubleshooting LEDs |
| 4-pin JST VH female connector | [Digi-Key 455-1185-ND](https://www.digikey.ca/en/products/detail/jst-sales-america-inc/VHR-4N/608626) | For connecting the PicoPSU to the Meanwell (see below for notes on tools) |
| JST SVH-21T-P1.1 crimp terminals | TODO | For building the connector |
| Vinyl spacers | TODO | For lifting the Meanwell board off the PCB | 
| M3 screws with nuts | TODO | For fastening the Meanwell board through the vinyl spacers |

## Tools
You will likely want a JST VH-specific crimper to crimp the pins for the wiring connection from the PicoPSU to the Meanwell 12V supply. I tried a few times with various universal crimpers and had no luck.

The crimper I successfully used was called [SNA-02BM](https://www.aliexpress.com/item/4000246209070.html) on AliExpress, but be careful as their "all in one" crimper jaw kit does _not_ include the JST VH jaws.

If you are in a hurry, you can always desolder the wiring harness from the PicoPSU and the connectors from the Meanwell, and then directly solder wires between these two units to pass the +12V to the PicoPSU. Whenever you are removing the wires from the PicoPSU, be careful to keep track of which pin is which on the PicoPSU, as the polarity was not marked on my PicoPSU otherwise.

You can also solder the wall cord directly to the Meanwell, but check your local electrical code about doing this instead of using a crimped connection.

In general, you should also have the following tools on hand:
 * A crimper capable of crimping ring terminals (pliers work in a pinch;)
 * Wire strippers;
 * Temperature-controlled soldering iron with appropriate electronics solder

## Assembly Process
Please do not attempt the manufacture of this board if you are unsure or nervous about it.

TODO: Actual assembly steps

It is strongly recommended to crimp the computer's wiring harness with ferrules before inserting them into the screw terminals. Doing so will [improve the reliability of a high-current connection](https://www.youtube.com/watch?v=bJk0mzaATI4&ab_channel=efixx), and also reduce the risk of shorting between pins. Ferrule crimpers, complete with ferrule kits, are inexpensive on most online marketplaces.

## Version History
 * v0.3: Move pull-up to input side of 74LS04, so that soft power on works.
 * v0.2: Fix AC/DC converter holes. Fix unused 74LS04 gates. Move ATX connector for more "hand room" around it. Remove thermal reliefs for power pours.
 * v0.1: Initial version. AC/DC converter footprint holes did not line up.

## Credits
Thanks to [mattsoft from the nfggames forum](https://nfggames.com/forum2/index.php?topic=6510.0) for the original idea and implementation for the "Tetris-piece" X68000 OG/ACE power supply, including much of the BOM for this one.

Thanks to [Tim Maxwell's ATX Breakout project](http://timmaxwell.org/pages/atx-breakout/) for contributing the symbol for the ATX connector.

Thanks to Dave Park for advice on thermal reliefs and reliable usage of the 74LS04.
