//DAV Lab5 FPGA Basics
`timescale 1 ns/1 ns

module usingRAM(address, data_in, mode, we, clock_in, 
					 out1, out2, out3, out4, out5, out6);
					 
	input [3:0] address, data_in;
	input mode, we, clock_in;
	output reg [7:0] out1, out2, out3, out4, out5, out6;
	wire [7:0] seg1, seg2, seg3, seg4, seg5, seg6;
	wire [3:0] data_out;
	
	// instantiate ram module
	mixed_width_ram #(.WORDS(16), .RW(4), .WW(4)) 
						 test(.we(we), .clk(clock_in), .waddr(address), 
						 .wdata(data_in), .raddr(address), .q(data_out));

	// whenever read/write switch is triggered...
	always @ (mode) begin
		// write mode: display waddr (address)
		if (mode == 1) begin
			seg1 = address%10;
			seg2 = (address/10)%10;
			seg3 = (address/100)%10;
			seg4 = (address/1000)%10;
			seg5 = (address/10000)%10;
			seg6 = (address/100000)%10;
			
			// seg1
			case (seg1)
				0: out1 = 8'b11000000;
				1: out1 = 8'b11111001;
				2: out1 = 8'b10100100;
				3: out1 = 8'b10110000;
				4: out1 = 8'b10011001;
				5: out1 = 8'b10010010;
				6: out1 = 8'b10000010;
				7: out1 = 8'b11111000;
				8: out1 = 8'b10000000;
				9: out1 = 8'b10010000;
				default: out1 = 8'b11111111;
			endcase
			
			// seg2
			case (seg2)
				0: out2 = 8'b11000000;
				1: out2 = 8'b11111001;
				2: out2 = 8'b10100100;
				3: out2 = 8'b10110000;
				4: out2 = 8'b10011001;
				5: out2 = 8'b10010010;
				6: out2 = 8'b10000010;
				7: out2 = 8'b11111000;
				8: out2 = 8'b10000000;
				9: out2 = 8'b10010000;
				default: out2 = 8'b11111111;
			endcase
			
			// seg3
			case (seg3)
				0: out3 = 8'b11000000;
				1: out3 = 8'b11111001;
				2: out3 = 8'b10100100;
				3: out3 = 8'b10110000;
				4: out3 = 8'b10011001;
				5: out3 = 8'b10010010;
				6: out3 = 8'b10000010;
				7: out3 = 8'b11111000;
				8: out3 = 8'b10000000;
				9: out3 = 8'b10010000;
				default: out3 = 8'b11111111;
			endcase
			
			// seg4
			case (seg4)
				0: out4 = 8'b11000000;
				1: out4 = 8'b11111001;
				2: out4 = 8'b10100100;
				3: out4 = 8'b10110000;
				4: out4 = 8'b10011001;
				5: out4 = 8'b10010010;
				6: out4 = 8'b10000010;
				7: out4 = 8'b11111000;
				8: out4 = 8'b10000000;
				9: out4 = 8'b10010000;
				default: out4 = 8'b11111111;
			endcase
			
			// seg5
			case (seg5)
				0: out5 = 8'b11000000;
				1: out5 = 8'b11111001;
				2: out5 = 8'b10100100;
				3: out5 = 8'b10110000;
				4: out5 = 8'b10011001;
				5: out5 = 8'b10010010;
				6: out5 = 8'b10000010;
				7: out5 = 8'b11111000;
				8: out5 = 8'b10000000;
				9: out5 = 8'b10010000;
				default: out5 = 8'b11111111;
			endcase
			
			// seg6
			case (seg6)
				0: out6 = 8'b11000000;
				1: out6 = 8'b11111001;
				2: out6 = 8'b10100100;
				3: out6 = 8'b10110000;
				4: out6 = 8'b10011001;
				5: out6 = 8'b10010010;
				6: out6 = 8'b10000010;
				7: out6 = 8'b11111000;
				8: out6 = 8'b10000000;
				9: out6 = 8'b10010000;
				default: out6 = 8'b11111111;
			endcase
		end
		// read mode: display q (data_out)
		else begin
			seg1 = data_out%10;
			seg2 = (data_out/10)%10;
			seg3 = (data_out/100)%10;
			seg4 = (data_out/1000)%10;
			seg5 = (data_out/10000)%10;
			seg6 = (data_out/100000)%10;
			
			// seg1
			case (seg1)
				0: out1 = 8'b11000000;
				1: out1 = 8'b11111001;
				2: out1 = 8'b10100100;
				3: out1 = 8'b10110000;
				4: out1 = 8'b10011001;
				5: out1 = 8'b10010010;
				6: out1 = 8'b10000010;
				7: out1 = 8'b11111000;
				8: out1 = 8'b10000000;
				9: out1 = 8'b10010000;
				default: out1 = 8'b11111111;
			endcase
			
			// seg2
			case (seg2)
				0: out2 = 8'b11000000;
				1: out2 = 8'b11111001;
				2: out2 = 8'b10100100;
				3: out2 = 8'b10110000;
				4: out2 = 8'b10011001;
				5: out2 = 8'b10010010;
				6: out2 = 8'b10000010;
				7: out2 = 8'b11111000;
				8: out2 = 8'b10000000;
				9: out2 = 8'b10010000;
				default: out2 = 8'b11111111;
			endcase
			
			// seg3
			case (seg3)
				0: out3 = 8'b11000000;
				1: out3 = 8'b11111001;
				2: out3 = 8'b10100100;
				3: out3 = 8'b10110000;
				4: out3 = 8'b10011001;
				5: out3 = 8'b10010010;
				6: out3 = 8'b10000010;
				7: out3 = 8'b11111000;
				8: out3 = 8'b10000000;
				9: out3 = 8'b10010000;
				default: out3 = 8'b11111111;
			endcase
			
			// seg4
			case (seg4)
				0: out4 = 8'b11000000;
				1: out4 = 8'b11111001;
				2: out4 = 8'b10100100;
				3: out4 = 8'b10110000;
				4: out4 = 8'b10011001;
				5: out4 = 8'b10010010;
				6: out4 = 8'b10000010;
				7: out4 = 8'b11111000;
				8: out4 = 8'b10000000;
				9: out4 = 8'b10010000;
				default: out4 = 8'b11111111;
			endcase
			
			// seg5
			case (seg5)
				0: out5 = 8'b11000000;
				1: out5 = 8'b11111001;
				2: out5 = 8'b10100100;
				3: out5 = 8'b10110000;
				4: out5 = 8'b10011001;
				5: out5 = 8'b10010010;
				6: out5 = 8'b10000010;
				7: out5 = 8'b11111000;
				8: out5 = 8'b10000000;
				9: out5 = 8'b10010000;
				default: out5 = 8'b11111111;
			endcase
			
			// seg6
			case (seg6)
				0: out6 = 8'b11000000;
				1: out6 = 8'b11111001;
				2: out6 = 8'b10100100;
				3: out6 = 8'b10110000;
				4: out6 = 8'b10011001;
				5: out6 = 8'b10010010;
				6: out6 = 8'b10000010;
				7: out6 = 8'b11111000;
				8: out6 = 8'b10000000;
				9: out6 = 8'b10010000;
				default: out6 = 8'b11111111;
			endcase
		end
	end
endmodule 
