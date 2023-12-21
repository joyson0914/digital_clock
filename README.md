# digital_clock
2023F CPE 487 Final Project

## Expected Behavior
Our project should work like a digital clock, and step 5 describes the expected behavior in details.
More description of each module file can be found [here](https://docs.google.com/presentation/d/1Twheq1lgFcUo3BrJrmfB6H9J4KeR7IdhTZJlQCEA3-M/edit?usp=sharing) 

![image](https://github.com/joyson0914/digital_clock/assets/98338109/7173f01f-6825-46a1-9d41-fa810fb4c75c)

- Clock Generation: to regulate time, a 1Hz clock generates the base timing for seconds incrementation.
- Time Control Component: manages the interplay between seconds, minutes, and hours. It ensures proper incrementation of time units, like transitioning from seconds to minutes after 60 seconds.
- Display Component: responsible for showcasing time on the board's 7-segment display. It also coordinates which digit should be shown at a given moment and controls multiple digits on the display.
- Anode Control: tilizes a 1kHz clock to determine which specific anode should be activated, thus controlling which digit(s) illuminate on the board.

## 1. Create a new RTL project digital_clock in Vivado Quick Start
   - Create six new source files of file type VHDL called clk_1hz, clk_1khz, clock_counter, anode_picker, decoder, mod6counter, and counter
   - Create a new constraint file of file type XDC called counter
   - Choose Nexys A7-100T board for the project
   - Click 'Finish'
   - Click design sources and copy the VHDL code from clk_1hz.vhd, clk_1khz.vhd, clock_counter.vhd, anode_picker.vhd, decoder.vhd, mod6counter.vhd, and counter.vhd
   - Click constraints and copy the code from counter.xdc 

## 2. Run synthesis
## 3. Run implementation and open implemented design
## 4. Generate bitstream, open hardware manager, and program device
   - Click 'Generate Bitstream'
   - Click 'Open Hardware Manager' and click 'Open Target' then 'Auto Connect'
   - Click 'Program Device' then xc7a100t_0 to download counter.bit to the Nexys A7-100T board

## 5. Use Buttons and switches
   - Press and hold BTNR to add an hour to the hour display.
   - Press and hold BTNL to add 10 hours to the hour display.
   - Press and hold BTND to add a minute to the minute display.
   - Press and hold BTNU to add 10 minutes to the minute display.
   - Use and hold the right-most switch to reset the clock to 0.

## Conclusion
We wanted to do something creative for our project. So we ended up making a digital clock. We put their brains together to figure out the logic for this project. After they worked together to get the different code files working. We had a week to do this project. We started of with some base code we found by doing research. Then we kept modifying it till we got it to do what we wanted it to do. The difficulty we faced was we did not change the constraints file so we kept having errors when trying to generate the bitstream. But once we added the constraints it worked. 
