# Wire Tool V1.1 User Manual

## What is the Wire Tool V1.1? 

The Wire Tool V1.1 is simplified and improved open-source wire EDM (electrical discharge machining) wire EDM toolhead developed by Rack Robotics. It aims to provide a cost-effective and easily hackable solution for wire EDM enthusiasts and professionals. The Wire Tool V1.1 is designed to be mounted to a CNC motion system of the user's choice.

![Wire Tool V1.1](images/WT-01_front_view.png)
![Wire Tool V1.1](images/WT-01_front_view_coverless.png)

### Changes from V1.0 to V1.1

A brief list of changes on the V1.1 Wire Tool Kit are as follows:
- Dual wire guides for significant cut quality increase
- Pin retained bearings on pinch roller for greater consistency
- Deeper idler grooves for easier threading
- M5 fastener for energizer instead of WC block (allows us to maintain price and increase repairability)
- Significantly easier to remove waste spool (does not require tools)
- More durable motor cover that is easier to install and remove
- Significant consolidation of printed parts to simplify build
- Fewer parts overall

In general, this is an easier build than the V1.0 with less diversity of parts. You should be able to replace your energizer more easily if need be without the requirement of an expensive, EDM-specific component.

**NOTE:** 
While Rack Robotics cannot currently give specific mption system recommendations, stiffness, motion precision, and system mass are all highly desirable in a WEDM machine.

An example of a poor choice for a motion system is an Ender 3 3D printer. An example of an almost ideal choice for a motion system would be a welded metal tank with ballscrew and linear rail actuators mounted on it. 

### Safety

**DANGER.** The Powercore operates at a potentially hazardous voltage of 64 - 150 VDC, and supplies high-power waveforms.

The Wire Tool is intended to be used in combination with the Powercore (V2 and later) EDM power supply. Improper use of the Powercore can increase radiated emission levels. The intrinsic properties of EDM necessitate operator care and supervision. Touching the workpiece or electrode(s) during EDM operation may expose the user to 64 - 150 VDC high-voltage pulses. **Individuals with pacemakers or similar medical devices should not operate the Powercore**, as the high-voltage environment could interfere with their functionality. Ensure that proper measures are taken against EMI. Routing of EDM power through unshielded/twisted cables is not recommended. Unshielded/twisted cables function as antennas, which will radiate emissions into the nearby environment.

### Help

If you find that there's something unclear in this documentation, please [submit a ticket on Github](https://github.com/Rack-Robotics/docs.git). 

If you have questions, please join our [discord](https://discord.gg/z4XNk7Hkgw). 

## Best Practices

- Consult the best practices section of the Powercore documentation corresponding to your Powercore version. 
- Avoid collision of the wire with the work. A collision may result in wire breakage and cut failure. Ensure that the wire tool is rigidly mounted on its motion platform. Unintended vibration or movement of the wire tool during operation may result in cut failure or wire breakage.

## Assembly

The following assembly will cover the base configuration for the WT-01. While not an ideal configuration, this base design is meant to work with the Ender 3 V1 3D printer. This choice is due to the extreme ease of acquisition of an Ender 3 V1. Many users claim to have one on hand already. You will need to modify the Tool Mount and Vat to fit your specific machine if you are not using an Ender 3 V1. 

This assembly may require hot glue, super glue, and heat set inserts. Each of these pose their own hazards to health. Take proper safety precautions when assembling the WT-01.

## 3D Prints

All 3D printable files can be found on the [Rack Robotics Printables page](https://www.printables.com/model/1412442-wt-01-v11-opensource-wire-edm-tool). Files included are 3MF, STL, and STEP. You may need to modify files for threaded insert to work with your chosen filament.

Files also available on the the [Rack Robotics Github](https://github.com/Rack-Robotics/docs/tree/main).

For Bambulab users, a ready to print project file has been provided.
Save for the Tension Arm, all parts print with the same settings. *Files verified for printing in PLA.* 

### Slicer Settings

Critical print settings are as follows:

|Setting                   |Setting Value  |
|--------------------------|---------------|
|Layer Height              |    0.16mm     |
|First Layer Height        |     0.2mm     |
|Line Width (Default)      |    0.42mm     |
|Line Width (First Layer)  |     0.5mm     |
|Line Width (Outer Wall)   |    0.42mm     |
|Line Width (Inner Wall)   |    0.45mm     |
|Wall Generator            |   Arachne     |
|Wall Loops                |         2     |
|Top Shell Layers          |         4     |
|Sparse Infill Density     |       15%     |
|Sparse Infill Pattern     |     Cubic     |
|Generate Supports         |        Yes, on build-plate only    |

**Note:** For the "Front Base" print, enfoce supports in the pinch roller idler area while maintaining a clear dielectric and wire path. In the slicer it should appear as follows:
![Wire Tool V1.1](images/special_print_instructions.png)


The slicer settings for the Tension Arm is as follows:

|Setting                   |Setting Value  |
|--------------------------|---------------|
|Wall Loops                |         5     |
|Generate Supports         |       Yes     |

### Required Files

|File Name            |Number Required    |Dual Color (Y/N)|Requires Threaded Inserts (Y/N)|
|---------------------|-------------------|----------------|-------------------------------|
|Back Lower Base      |         1         |        N       |N                              |
|Back Lower Cover     |         1         |        Y       |N                              |
|Front Base           |         1         |        N       |Y                              |
|Idler Cover          |         2         |        N       |N                              |
|Motor Cover          |         1         |        N       |N                              |
|Spool Puller Base    |         1         |        N       |N                              |
|Spool Puller Cap     |         1         |        Y       |N                              |
|Tension Arm          |         1         |        N       |Y                              |
|Front Cover          |         1         |        Y       |N                              |
|Tool Mount           |         1         |        N       |N                              |
|Tool Mount Cover     |         1         |        Y       |N                              |


## Threaded Insert Installation

Threaded inserts are used in this tool. Please use caution when installing threaded inserts.

Install the threaded inserts in accordance with the following images:

### Front Base

![Front_Base](images/MAIN_Lower_Front_Base_1.png)
![Front_Base](images/MAIN_Lower_Front_Base_2.png)
![Front_Base](images/INSERT_Lower_Front_Base_1.png)
![Front_Base](images/INSERT_Lower_Front_Base_2.png)


### Tension Arm

![Tension_Arm](images/MAIN_Tension_Arm_1.png)
![Tension_Arm](images/INSERT_Tension_Arm_1.png)
![Tension_Arm](images/INSERT_Tension_Arm_2.png)

## Magnet Installation

Magnets are used to retain safety covers on the WT-01. All magnets provided are M6x2. Magnets should fit snugly into their recesses, a small drop of super glue will prevent the magnets from working their way out after many cycles of cover installation and removal. Installation may be eased with the use of a steel rod to press magnets into place.

**IMPORTANT.** Ensure all magnets are installed in matching orientation into base parts and covers. This may be simply achieved by first installing the magnets into all covers and subsequently placing another magnet on each installed magnet. The secondary placed magnet may be carefully removed and installed in matching orientation in the base part.

Install magnets in accordance with the following images:

### Front Base

![Front_Base_Magnet](images/MAGNET_Lower_Front_Base_1.png)
![Front_Base_Magnet](images/MAGNET_Lower_Front_Base_2.png)

### Back Lower Base

![Back_Base_Magnet](images/MAIN_Back_Lower_Base_1.png)
![Back_Base_Magnet](images/MAGNET_Back_Lower_Base_1.png)
![Back_Base_Magnet](images/MAGNET_Back_Lower_Base_2.png)

### Tool Mount

![Tool_Mount_Magnet](images/MAIN_Tool_Mount_1.png)
![Tool_Mount_Magnet](images/MAGNET_Tool_Mount_1.png)
![Tool_Mount_Magnet](images/MAGNET_Tool_Mount_2.png)

### Front Lower Cover

![Front_Lower_Cover_Magnet](images/MAIN_Front_Lower_Cover_1.png)
![Front_Lower_Cover_Magnet](images/MAIN_Front_Lower_Cover_2.png)
![Front_Lower_Cover_Magnet](images/MAGNET_Front_Lower_Cover_1.png)
![Front_Lower_Cover_Magnet](images/MAGNET_Front_Lower_Cover_2.png)

### Back Lower Cover

![Back_Lower_Cover_Magnet](images/MAIN_Back_Lower_Cover_1.png)
![Back_Lower_Cover_Magnet](images/MAIN_Back_Lower_Cover_2.png)
![Back_Lower_Cover_Magnet](images/MAGNET_Back_Lower_Cover_1.png)
![Back_Lower_Cover_Magnet](images/MAGNET_Back_Lower_Cover_2.png)

### Tool Mount Cover

![Tool_Mount_Cover_Magnet](images/MAIN_Tool_Mount_Cover_1.png)
![Tool_Mount_Cover_Magnet](images/MAIN_Tool_Mount_Cover_2.png)
![Tool_Mount_Cover_Magnet](images/MAGNET_Tool_Mount_Cover_1.png)
![Tool_Mount_Cover_Magnet](images/MAGNET_Tool_Mount_Cover_2.png)

## Mechanical Assembly

When assembling the WT-01, care must be taken not to cross thread fasteners into the aluminum endoskeleton. If fasteners are cross threaded, the type III anodizing may be damaged, exposing the bare aluminum to water. This will lead to corrosion and premature degradation of your WT-01. The grounding screw position is intentionally not anodized. While this part is above the waterline, you may add dielectric grease to this connection to prevent corrosion. 

All hardware required for assembly is included with the WT-01 kit from Rack Robotics. All hardware save for the ceramic wire guides is generic and stainless steel to ease in the replacement of wear components such as the 625RS bearings.

The following hardware is required for assembly of the WT-01:

|Part                                 |Number Required    |
|-------------------------------------|-------------------|
|Endoskeleton                         |         1         |
|Ceramic Wire Guide                   |         2         |
|625RS Bearing                        |         4         |
|18RPM 24V DC Motor                   |         1         |
|Bowden Coupler                       |         1         |
|Tension Spring                       |         1         |
|M3 Rivnut                            |         1         |
|135mm PTFE Tube                      |         1         |
|Wago 221-412                         |         4         |
|M3x8 Buttonhead Cap Screw            |         5         |
|M5x16 Buttonhead Caprew              |         10        |
|M5x20 Buttonhead Caprew              |         2         |
|M4x25 Buttonhead Cap Screw           |         1         |
|M5x12 Undersized Dowel Pin           |         2         |

## Subcomponents

Mechanical assembly begins with the assembly of subcomponents.

Complete mechanical assembly in accordance with the following images:

### Idler (2x)
Complete this step 2 times.
Requires:
- 625RS Bearing (2x)
- Idler Print (2x)

![Idler_Assm](images/ASSM_Idler_1.png)
![Idler_Assm](images/ASSM_Idler_2.png)

**ALERT.** While bearing fit may be slightly tight, it is advised to add a small amount of superglue here prior to installation. Apply light coating only on interior walls of Idler print. This will ensure retention through the life of the bearing. Bearings will corrode over time.

![Idler_Assm](images/ASSM_Idler_3.png)
![Idler_Assm](images/ASSM_Idler_4.png)

### Tension Arm
Requires:
- Tension Arm Print
- 625RS Bearing
- M5x12 Button Head Cap Screw

![Tension_Arm_Assm](images/ASSM_Tension_Arm_1.png)
![Tension_Arm_Assm](images/ASSM_Tension_Arm_2.png)
![Tension_Arm_Assm](images/ASSM_Tension_Arm_3.png)

**NOTE.** If available, a vice or arbor press is especially helpful for installation of pins. Pins are undersized, but should self retain in the hole.

![Tension_Arm_Assm](images/ASSM_Tension_Arm_4.png)
![Tension_Arm_Assm](images/ASSM_Tension_Arm_5.png)

### Front Base
Requires:
- Front Base Print
- Ceramic Wire Guides
- M5x12 Undersized Dowel Pin
- Bowden Coupler
- PTFE Tube

**NOTE.** A flat tool such as a non-metallic scraper is helpful for installation of ceramic wire guides. Installation will be snug. A small dot of superglue on the side of the guide may be helpful for retention after installing.

![Flushing_Cap_Assm](images/ASSM_Flushing_Cap_1.png)
![Flushing_Cap_Assm](images/ASSM_Flushing_Cap_2.png)
![Flushing_Cap_Assm](images/ASSM_Flushing_Cap_3.png)

**NOTE.** Bowden couplers are supplied with gaskets installed. These gaskets are the black plastic and rubber portions. *Remove these prior to installation.* Install blue collar prior to installation.

![Tensioner_Body_Assm](images/ASSM_Tensioner_Body_2.png)
![Tensioner_Body_Assm](images/ASSM_Tensioner_Body_3.png)
![Tensioner_Body_Assm](images/ASSM_Tensioner_Body_4.png)
![Tensioner_Body_Assm](images/ASSM_Tensioner_Body_5.png)
![Tensioner_Body_Assm](images/ASSM_Tensioner_Body_6.png)
![Tensioner_Body_Assm](images/ASSM_Tensioner_Body_7.png)
![Tensioner_Body_Assm](images/ASSM_Tensioner_Body_8.png)

## Final Assembly

Once subcomponents have been assembled, final assembly may begin.

Complete the mechanical assembly of the WT-01 in accordance with the following images:

### Front Lower Base
Requires:
- Endoskeleton
- Front Base Print
- Idler Assembly (2x)
- JGY-370 Motor
- M3x8 BHCS (5x)
- M5x16 Screw (4x)

![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_1.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_2.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_3.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_4.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_5.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_6.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_7.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_8.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_9.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_10.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_11.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_12.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_13.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_14.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_15.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_16.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_17.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_18.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_19.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_20.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_21.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_22.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_23.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_24.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_25.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_26.png)
![Front_Lower_Base_Assm](images/ASSM_Front_Lower_Base_27.png)


### Back Lower Base
Requires:
- Back Lower Base Print
- M5x16  Screw (3x)

![Back_Lower_Base_Assm](images/ASSM_Back_Lower_Base_1.png)
![Back_Lower_Base_Assm](images/ASSM_Back_Lower_Base_2.png)
![Back_Lower_Base_Assm](images/ASSM_Back_Lower_Base_3.png)
![Back_Lower_Base_Assm](images/ASSM_Back_Lower_Base_4.png)
![Back_Lower_Base_Assm](images/ASSM_Back_Lower_Base_5.png)
![Back_Lower_Base_Assm](images/ASSM_Back_Lower_Base_6.png)
![Back_Lower_Base_Assm](images/ASSM_Back_Lower_Base_7.png)
![Back_Lower_Base_Assm](images/ASSM_Back_Lower_Base_8.png)
![Back_Lower_Base_Assm](images/ASSM_Back_Lower_Base_9.png)

### Tool Mount
Requires:
- Tool Mount Print
- M5x16 Screw (2x)
- Wago 221-412 (4x)

![Tool_Mount_Assm](images/ASSM_Tool_Mount_1.png)
![Tool_Mount_Assm](images/ASSM_Tool_Mount_2.png)
### Ground Wire

**NOTE.** The grounding wire ring terminal must be installed with the *lower M5x16 BHCS* at this point. It is important that you install the grounding stap on the lower position as that is the only hole on the endoskeleton that has not been anodized. An anodized layer will prevent grounding of the frame.

Grounding is done for safety and EMI reduction.

![Tool_Mount_Assm](images/ASSM_Tool_Mount_3.png)
![Tool_Mount_Assm](images/ASSM_Tool_Mount_4.png)
![Tool_Mount_Assm](images/ASSM_Tool_Mount_5.png)
![Tool_Mount_Assm](images/ASSM_Tool_Mount_6.png)

## Wiring
While simple, proper wiring of the WT-01 is critical. Ensure all of the following electrical connections are well secured. 

### Energizer Screw and Cathode Wire

The Energizer Screw is the component that connects the cutting wire to the circuit. Ensuring a solid and long term electrical connection is important for reliability and safety. After installation, potting of the connection with hot glue is strongly recommended. Potting will help to prevent oxidation of the connector, improving lifetime.

Requires:
- Cathode Wire
- M5x20 BHCS
- Hot Glue

![WC_Block_Assm](images/ASSM_WC_Block_1.png)
![WC_Block_Assm](images/ASSM_WC_Block_2.png)

Thread fastener through threads in 3D print. Route wire through recess in 3D print. Insert into Wago.

**ALERT.** Pot the electrical connection at this point. Hot glue will provide some protection against water for this connection. The 3D print is designed to act as a potting cup and may be filled partially with glue. Lower temperature plastics like PLA may be damaged by potting entire cavity at once. Several steps may be required, allowing time to cool between each. 

### Power Connections

Wires supplied in the WT-01 kit require stripping before insertion into Wago terminals. Wires have been provided in this fashion in order to prevent fraying and damage during shipping. **IMPORTANT. Strip all wires to expose 11mm of conductor. This is the required standard for Wago lever connectors.**

First, complete wiring to the Vat. Complete wiring in accordance with the following images:

![Vat_Wago_Bank_Callout](images/POWER_WIRING_VAT_1.png)

**IMPORTANT. DO NOT TWIST WIRES PRIOR TO INSERTION INTO WAGO SLOTS.**

![Vat_Wago_Bank_Closeup](images/POWER_WIRING_VAT_2.png)

After completion of wiring for the Vat, the tool must next be wired.

![Tool_Wiring_Diagram](images/POWER_WIRING_TOOL_1.png)

After completion of wiring, consolidation of wiring loom with zip ties is recommended. 

### Magnetic Covers

Now that final assembly and wiring have been completed, magnetic covers may be installed.

## Mounting

Mounting the WT-01 in its base configuration on the Ender 3 is a simple task. The steps for doing so are as follows:
- Remove Ender 3 hotend, retaining mounting hardware
- Place WT-01 on hotend mounting boss
- Reinstall hotend mounting fasteners through holes in the WT-01 Tool Mount Plate

## Threading of Wire

Threading is the act of guiding the brass EDM wire through the wire EDM tool. Here are a few tips for threading the wire tool: 

- Use a lighter to part the brass EDM wire, DO NOT cut it with a clipper or knife. Clipping or cutting of the wire leaves a burr on the wire, which prevents it from entering the ceramic wire guide. Burrs can be avoided by placing the EDM wire into the flame of a lighter, and applying tension by hand. The heat melts the wire, and allows it to be drawn into a sharp point. This sharp point permits the brass EDM wire to enter the precision wire guide. 
- Release tension on the system by loosening tension spring completely; then depress the tension arm and manually feed the wire through the PTFE tube and wire guide.
- Guide wire around the first and second idler, taking care to ensure that the wire sits below the WC block.
- Thread the wire through the hole in the waste spool. Pull tight and hold the wire out to the side near the the waste spool's axis of rotation.
- Re-apply tension by tightening the screw on the tension arm.
- Turn on the spool motor and allow at least 5 full turns before letting go of wire.
- Excess wire used for threading may now be broken off of the waste spool.
- WT-01 is now threaded and ready to cut.

## Integrating Flushing

The wire tool supports dielectric flushing. Flushing dramatically improves cutting reliability and cutting speed. Dielectric (distilled water or EDM oil) removes EDM chips from the cut and cools the wire. Most problems in wire EDM are solved by adding more dielectric flushing. It is recommended to use a 100 PSI water pump with the Wire Tool.

**It is highly recommended to use ONLY WATER for EDM cutting when possible. Oil and other common hydrocarbon dielectrics (e.g. diesel fuel), have an inherent fire and explosion hazard.**

## Troubleshooting

(TO BE ADDED)

## Contributing

Want to chat? Please join our [discord](https://discord.gg/z4XNk7Hkgw). 
