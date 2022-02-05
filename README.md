## Introduction
This is a replacement power supply board for the Sharp X68000 PRO (CZ-652C) desktop computer from 1989. It uses a PicoPSU and an off-board 12VDC power supply to provide the power rails, and handles the unique soft-power-on logic of the X68Ks.

Note that this board does NOT support the PRO2 model (CZ-653C)! That model uses a completely different power supply layout, identical to the tower machines. See below.

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

PRO2 models have a different power supply, which looks to be identical to the "Tetris-piece" supply of the tower models. This board will not fit that style of power supply case; [use the mattsoft board instead](https://github.com/mattsoft/X68K_Pico_PSU_v2).

Please note that [the wiring colours are _also_ different for PRO2 models and tower models](https://blog.goo.ne.jp/kawalab_net/e/a0a71a56ef128293a3bc617afcea7ec3).

## Bill of Materials

| Component | Source link          | Comments |
|-----------|----------------------|----------|
| 12V DC power supply (I used a Meanwell EPS-65S-12) | [Digi-Key 1866-1733-ND](https://www.digikey.ca/en/products/detail/mean-well-usa-inc/EPS-65S-12/7703210) | Accepts a 3"x2" or 4"x2" supply |
| PicoPSU   | | I used an 80W model, be aware of the power limit (W) of the 12V supply. |
| A 3-prong electrical cord | [Digi-Key AE10689-ND](https://www.digikey.ca/en/products/detail/assmann-wsw-components/AK500-OE-5-0-5/2504531) | I cut up an Apple MagSafe extension cord for mine. |
| A ring terminal for the ground prong of the cord | TODO | Make sure the ring terminal matches the gauge of the earth/ground conductor of the cord. |
| Rubber strain-relief grommet for the power cord (recommended) | [uxcell 27x9x6mm](https://www.amazon.ca/Uxcell-Rubber-Square-Strain-Protector/dp/B016UFGHUK/) | |
| 74LS04 or 74HCT04 (DIP) | [Digi-Key 296-2083-5-ND](https://www.digikey.ca/en/products/detail/texas-instruments/CD74HCT04E/38238) | |
| 2x 7-pin screw terminals | [Digi-Key 277-1582-ND](https://www.digikey.ca/en/products/detail/phoenix-contact/1935213/568619) | Please use ferrule crimps (see below) |
| 24-pin ATX connector | [Digi-Key WM3811-ND](https://www.digikey.ca/en/products/detail/molex/0039281243/356033) | 20-pin can also be used |
| 3-pin fan header | [Digi-Key WM19538-ND](https://www.digikey.ca/en/products/detail/molex/0038006293/3160035) | 2-pin or a regular 0.1" pin header can also be used |
| 4.7kΩ through-hole resistor | [Digi-Key CF14JT4K70CT-ND](https://www.digikey.ca/en/products/detail/stackpole-electronics-inc/CF14JT4K70/1741428) | Pull-up for soft power logic |
| 0.1µF through-hole capacitor | TODO | |
| 2x 100Ω through-hole resistors (optional) | TODO | Current limiters for troubleshooting LEDs |
| 2x through-hole green LEDs (optional) | TODO | For troubleshooting LEDs |
| 4-pin JST VH "VHR-4N" female connector | [Digi-Key 455-1185-ND](https://www.digikey.ca/en/products/detail/jst-sales-america-inc/VHR-4N/608626) | For connecting the PicoPSU to the Meanwell (see below for notes on tools.) Some eBay sellers offer a pre-crimped harness using this connector, but I have not seen any for electrical cords |
| 3-pin JST VH "VHR-3N" female connector | [Digi-Key 455-1184-ND](https://www.digikey.ca/en/products/detail/jst-sales-america-inc/VHR-3N/608625) | For connecting the wall cord to the Meanwell. |
| JST SVH-21T-P1.1 crimp terminals | [Digi-Key 455-1133-1-ND](https://www.digikey.ca/en/products/detail/jst-sales-america-inc/SVH-21T-P1-1/527368) | For building the PicoPSU-to-Meanwell connector and wall-to-Meanwell connector |
| Vinyl spacers | TODO | For lifting the Meanwell board off the PCB | 
| M3 screws with nuts | TODO | For fastening the Meanwell board through the vinyl spacers |
| Replacement cooling fan (optional) | [Noctua NF-A6x25](https://noctua.at/en/nf-a6x25-pwm) | Can reuse original fan if desired, but mine was gross. |

## Tools
### JST VH crimper
You will likely want a JST VH-specific crimper to crimp the pins for the wiring connection from the PicoPSU to the Meanwell 12V supply. I tried a few times with various universal crimpers and had no luck.

The crimper I successfully used was called [SNA-02BM](https://www.aliexpress.com/item/4000246209070.html) on AliExpress, but be careful as their "all in one" crimper jaw kit does _not_ include the JST VH jaws.

If you are in a hurry, you can always desolder the wiring harness from the PicoPSU and the connectors from the Meanwell, and then directly solder wires between these two units to pass the +12V to the PicoPSU. Whenever you are removing the wires from the PicoPSU, be careful to keep track of which pin is which on the PicoPSU, as the polarity was not marked on my PicoPSU otherwise.

You will probably still have to crimp the electrical cord, as many electrical standards bodies frown upon soldering it.

### Ferrule crimper
It is strongly recommended to crimp the computer's wiring harness with ferrules before inserting them into the screw terminals. Doing so will [improve the reliability of a high-current connection](https://www.youtube.com/watch?v=bJk0mzaATI4&ab_channel=efixx), and also reduce the risk of shorting between pins if wire strands splay out while tightening the screw terminals. Ferrule crimpers, complete with ferrule kits, are inexpensive on most online marketplaces – I used the generic red-and-blue one which is sold under dozens of names.

### High-quality JIS screwdriver
Disassembly of the system will go much better if you have a [JIS screwdriver](https://rtstools.com/jis-vs-phillips-screwdrivers-and-where-to-buy-a-jis-screwdriver/) on hand. JIS is commonly used in Japanese computers, vehicles, and machines, and if you keep camming out and ruining screws, that's probably because you are using a Phillips screwdriver to turn them. JIS screws can be recognized by their cross head and identifying dot. My favourite brand of JIS screwdriver is [Vessel](https://www.vesseltoolsusa.com/product/screwdriver), but Hozan also makes a good driver.

### The Essentials
In general, you should also have the following tools on hand:
 * A crimper capable of crimping ring terminals (pliers work in a pinch;)
 * Wire strippers;
 * A heat gun if you are using heat-shrink ring terminals (recommended;)
 * Temperature-controlled soldering iron with appropriate electronics solder (I recommend Kester 63/37)

## Assembly Process
Please do not attempt the manufacture of this board if you are unsure or nervous about it.

### 1. Disassembly of Old Power Supply
Once the power supply unit is removed from the computer, unscrew the screws on the outside of the power supply. Keep track of where each one came from.

Once the old power supply board is exposed, cut the wiring harness as close to the board as possible so that you have lots of wire length to work with. If your old power board is extremely corroded (it probably is) you should check the wiring. Any "greening up" or general crunchiness of the original wire means that it's safer and more reliable for it to be thrown away.

Make sure you preserve the grommet for the original harness, as it helps protect the wiring from the sharp edges of the power supply case.

Unscrew the original supply board and set it aside, just in case. At this point, you may also want to chuck the old fan in the trash and order a Noctua.

The case itself can be cleaned using dish soap and a firm brush. I used a dishwasher for mine, but it didn't do as good of a job without heavy scrubbing.

### 2. Soldering the new PCB
This is the most straightforward part. Move in order from the lowest-height to the tallest components. Depending on how much of your original harness is left, it may help to point the opening of the screw terminals both "southward" towards the opening.

Make sure the 74LS04 is installed the correct way around before soldering. The notch on the IC (and on the socket, if you're using one) should match the notch on the PCB's silkscreen.

When installing through-hole LEDs, there is a flat side and a rounded side. The flat side should be pointing towards the _negative_ terminal of the LED footprint. It is optional to install the LEDs, and if you don't, there's no need to install the R1 and R2 current-limiting resistors for those LEDs.

If you only have a 20-pin ATX connector instead of a 24-pin ATX connector, follow the legend on the PCB to know which pins to install it into. The unused four plated holes can be ignored as the PicoPSU will not conceivably make contact with them. Note that this configuration has not been tested.

### 3. 12V converter to PicoPSU harness
The PicoPSU is shipped with a DC barrel plug on the end of two wires that are soldered into the top of the PicoPSU unit. Chop off the barrel plug, strip the wiring back, and crimp it for the 12V converter you are using. Pay attention to the pinout of the converter and of the PicoPSU!

When you are done, the PicoPSU and the 12V converter should be connected. It is also possible to solder the PicoPSU directly to the converter, but it makes it kind of a pain to take apart later.

### 4. Wall power to 12V converter harness
If at any point in this step you find yourself unsure, confused, or nervous, immediately stop and consult an electrician.

Find a suitable donor 3-prong power cord, and cut the end off of it. Strip back the insulation to expose the three wires which a power cord consists of.

In North America, these three wires are black (live), white (neutral), and green (earth/ground.) If that's not the case on the cord you just cut open, or if you live outside North America, please consult a local electrician for reference on what is safe to do.

At this point, you should slip the grommet you're going to use over the cord, _before_ you install the crimp connector. Don't forget and wait until later, you will regret it.

It is strongly recommended that you now tie [an underwriter's knot](https://www.thespruce.com/what-is-an-underwriters-knot-1152873). This knot adds strain relief, but it is essential for safety so that passing children and YouTubers can't pull a live electrical cord out of the back of the computer.

Paying attention to the footprint for your 12V converter, crimp the live and neutral wires for the converter, and crimp a ring terminal onto the ground. On the double-insulated converter which I used, no ground lug is exposed, so the ring terminal had to be bolted directly to the case of the supply.

Unlike the PicoPSU connection, in North America, it is generally frowned upon (and is usually against local electrical code) to solder the live and neutral conductors directly to anything. A soldered connection is considered less reliable and consistent.

Once this step is complete, you should be able to plug a wall cord into the 12V converter, which is itself plugged into the PicoPSU. Don't plug the electrical cord into the wall yet.

### 5. Installing the 12V converter
Using the spacers and fastening nuts, install the 12V converter into the board. It should be spaced far enough away that any components on the underside of the board can not conceivably make contact with the board. You might also want to consult the datasheet for your converter to see if there are any special requirements with airflow, etc.

Once this step is complete, the converter should be rigidly attached to the board. You're almost done!

### 6. Fan installation
If you removed the fan in a previous step (e.g. replacing it with a Noctua) you should now bolt the new fan in. It isn't _impossible_ to do it with the board installed, but it's much more of a pain.

Make sure to screw it down with the same screws you originally used, and route the harness into the fan connector. If you are using a 2-pin fan (such as the original) it should be connected across the GND and 12V pins.

### 7. Board installation
Drop the board into the vacated power supply case, and screw it down using the supplied holes. You'll want to do a quick check here to make sure that your converter screws are not even remotely close to contacting the metal of the case.

Slot the PicoPSU into the ATX connector, and connect it to the 12V converter.

### 8. Installing the wall cord
Install the power cord into the back of the shell. The "slot" in the rubber grommet should slide smoothly but firmly into the hole on the supply shell, and stay there.

Make sure the green "ground" wire of the wall cord has continuity with the metal case. Make sure the crimps on the live/neutral connector are tight, and that they make good contact with the pins of the 12V converter.

You should now be able to test the standby system. Keeping your hands free of the internals of the power supply, plug the cord into the wall. The "standby" LED, if installed, should illuminate.

Congratulations: the power is getting from the wall, to the 12V converter, into the PicoPSU and being turned into always-on 5V.

Make sure you unplug the power supply before you move on.

### 9. Building and Routing the Main Harness
Strip back each of the conductors on the original harness. Again, look for "greened up" wires, or especially brittle ones. You can then crimp them with ferrule crimps and install them into the screw terminals.

If you removed the harness grommet, now is the time to reinstall it. It gets a lot harder to do after this.

Here is the colour guide for _my_ machine: yours may be different, and if it is please let me know so I can update this. It followed the pattern shown on [the NFGGames power-supply rebuild page](https://nfggames.com/nfg/x68repair/).

| Colour | Voltage | Comment |
|--------|---------|---------|
| Orange | +5V standby | Connect to +5VSB pad |
| Red    | +5V     | |
| Blue   | -12V    | |
| Black  | Ground  | |
| Yellow | +12V    | |
| Brown  | PwrOn   | Connect to "PwrOn" pad |

At this point, you may also want to substitute one of the original floppy power cables for an additional 4-pin Molex or Berg power cable, which will make powering a hard drive or SCSI2SD easier in the future.

If you are colour-blind, ask someone who isn't to help you identify the wires.

You should now be able to plug in the supply, short the "Power On" pin to +5V standby, and watch the supply turn on. The "Power Good" light should illuminate, and you should see appropriate voltages on all of the connectors.

### 10. Final Assembly
Here are all the little steps:

 1. Put the top back on the case, and screw it down. Pay special attention to make sure it isn't pinching or otherwise cutting into any of the nest of wires running around inside the case.
 2. Ensure that the fan, likewise, is not able to hit any wires including its own harness. You might have to ziptie wires back. Remember also that retro computers tend to get picked up and moved a lot, so make sure that the wires aren't just "out of the way for now."
 3. Reinstall the power supply to the computer. Make sure that it is rigidly held by the sides of the case and the crossbars.
 4. Reattach the power harness to the motherboard and all devices. You might find it easier to reach the floppies, especially, if you do this _before_ the power supply is bolted down into the computer.
 5. Screw down the power supply onto the crossbars, locking it in place.
 6. Do a final sanity check to make sure you didn't miss any connectors or have anything pinched or shorted.

### 11. It's Showtime
Connect the 3-prong power cord to the wall outlet. The computer's "standby" light should now come on. You might be able to see the "standby" light on the PSU PCB itself, if you can stare through the fan.

Push the power button on the front of the computer. The power supply should now start, signalled by the fan revving up, and you should (hopefully) see a running computer.

Congratulations, you have successfully kept the scene alive!

## Version History
 * v0.3: Move pull-up to input side of 74LS04, so that soft power on works.
 * v0.2: Fix AC/DC converter holes. Fix unused 74LS04 gates. Move ATX connector for more "hand room" around it. Remove thermal reliefs for power pours.
 * v0.1: Initial version. AC/DC converter footprint holes did not line up.

## Credits
Thanks to [mattsoft from the nfggames forum](https://nfggames.com/forum2/index.php?topic=6510.0) for the original idea and implementation for the "Tetris-piece" X68000 OG/ACE power supply, including much of the BOM for this one.

Thanks to [Tim Maxwell's ATX Breakout project](http://timmaxwell.org/pages/atx-breakout/) for contributing the symbol for the ATX connector.

Thanks to Dave Park for advice on thermal reliefs and reliable usage of the 74LS04.
