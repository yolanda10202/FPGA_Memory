# FPGA_Memory
IEEE Student Branch at UCLA Digital Audio Visualizer (DAV) Project Lab 5 Part E

## Description
This module creates some sort of memory storage on the FPGA. We will have access to 16 registers and are able to assign values we want to store inside the registers. The module will be using the 10 switches and the 6 seven segment displays on the FPGA.

## Switches
Below are the function of the 10 switches.

### Switches 9-6
These 4 switches represent the "value" you want to store inside the register. The values are read in binary, so if switches 9-6 are turned "off off on off," it translates to "0010" or 2 in decimals. In other words, you can assign some register to store the value 2 when you do this. 

### Switches 5-2
These switches represent which register you are accessing. Because there are 4 switches we can use, we can access a total of 16 registers (0000 to 1111). The idea is similar to switches 9-6 described above. 

### Switch 1
This switch is called the "write enable switch." If it is ON, you are able to assign values (using switches 9-6) to the register you choose (using switches 5-2). If it is OFF, you cannot assign values to any register.

### Switch 0
This is the "read/wirte mode switch." Read mode is assigned to 0 and write mode is assigned to 1 in my design. When you are in read mode, you are able to check the value stored in the register you want. When you are in write mode, you can assign values to registers. 

## Example 
This is an example to demonstrate how to use the module if you want to store "value 2" inside "register 7."
1. Turn on switch 0 and 1
2. Set switches 5-2 to "OFF ON ON ON" (This means register 7 because 0111 in decimals in 7)
3. Set switches 9-6 to "OFF OFF ON OFF" (This means value 2 because 0010 in decimals in 2)
4. Turn off switch 1 (write disable)
5. Done! Register 7 now stores value 2!

This is an example to demonstrate how to check if the value you stored is what you want.
1. Turn off switch 0 (enters read mode)
2. Change switches 5-2 to "OFF ON ON ON" (reads register 7)
3. Check the seven segment display, it should display 2.
4. Done!

## mixed_width_ram.sv
This is the built in code template in Quartus. I added my own parameters to fit my memory storage module. 

Below are definitions of the parameters needed to enable the code

### #(parameter)
* WORDS = num of registers we can access (16 in my design because 0000 to 1111)
* RW = num of bits of the value you are reading (4 in my design because we are using 4 binary switches to represent the value)
* WW = num of bits of the value you are writing (4 in my design because we are using 4 binary switches to represent the values)

### Input and Output Wires
Input:
* we = write enable
* clk = the 50MHz clock 
* waddr = write address
* wdata = write data
* raddr = read address

Ouput:
* q = returns the value stored in the given register (the read value we want to display onto the seven segment display)
