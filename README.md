# digital_clock
2023F CPE 487 Final Project

![image](https://github.com/joyson0914/digital_clock/assets/98338109/7173f01f-6825-46a1-9d41-fa810fb4c75c)


## 1. Create a new RTL project pong in Vivado Quick Start
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

