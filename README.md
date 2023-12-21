# Digital Clock
2023F CPE 487 Final Project

## Expected Behavior
Our project should work like a digital clock, and step 5 describes the expected behavior in details.
More description of each module file can be found [here](https://docs.google.com/presentation/d/1Twheq1lgFcUo3BrJrmfB6H9J4KeR7IdhTZJlQCEA3-M/edit?usp=sharing) 

![image](https://github.com/joyson0914/digital_clock/assets/98338109/7173f01f-6825-46a1-9d41-fa810fb4c75c)

- Clock Generation: to regulate time, a 1Hz clock generates the base timing for seconds incrementation.
- Time Control Component: manages the interplay between seconds, minutes, and hours. It ensures proper incrementation of time units, like transitioning from seconds to minutes after 60 seconds.
- Display Component: responsible for showcasing time on the board's 7-segment display. It also coordinates which digit should be shown at a given moment and controls multiple digits on the display.
- Anode Control: utilizes a 1kHz clock to determine which specific anode should be activated, thus controlling which digit(s) illuminate on the board.

### The top level source module is called **_counter_** that
coordinates the generation of clock signals, manages the counting of time units, and controls which digits are displayed on the 7-segment display, ensuring an accurate representation of time
- Clock Division: it employs two clock generation components **_(clk_1hz and clk_1khz)_** to produce a 1Hz clock _(clk1)_ and a 1kHz clock _(clk2)_ from an incoming clock signal _(clk)_.
- Mod6Counter: it utilizes the 1kHz clock _(clk2)_ to generate a cyclic sequence from 0 to 5 (dig signal) before rolling over to 0, effectively counting from 0 to 5 in a loop.
- Clock Counter: this controls the logic to count time. It manages the seconds counter, considering the incrementation based on the provided _reset_, _houradder_, and _minuteadder_ signals. These signals determine how the time (hours, minutes, seconds) should be affected or incremented.
- Anode and Decoder Logic: they handle the selection of which digit to display on the 7-segment display based on the counted value _(dig)_ and the current time values _(digit0_ to _digit5)_.

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
   - The digit0 display starts counting from 1

## 5. Use Buttons and switches
   - Press and hold BTNR to add an hour to the hour display.
   - Press and hold BTNL to add 10 hours to the hour display.
   - Press and hold BTND to add a minute to the minute display.
   - Press and hold BTNU to add 10 minutes to the minute display.
   - Use and hold the right-most switch to reset the clock to 0.

## [Video Demonstration](https://drive.google.com/file/d/1uX2xpcyvulzHhY5Q5qtCH_bXpXFaoRAd/view?usp=sharing)

## Conclusion
We wanted to do something creative for our project, so we ended up making a digital clock. We put their brains together to figure out the logic for this project. After they worked together to get the different code files working. We had a week to do this project. We started off with some base code we found by doing research. Then, we modified some parts using our knowledge from previous labs (such as _counter.xdc, anode_picker.vhd, decoder.vhd_), so it reflects our applications. The difficulty we faced was we did not change the constraints file so we kept having errors when trying to generate the bitstream. But once we added the constraints it worked. 
