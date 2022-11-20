// 8X8 ROM
// Has 8 Locations & containst data for 8 bit data and addresses
module PowerPCROM(
	input CLK,					// System Clock
	input ENW,					// Enable ROM Access
	input [3:0] Addr_A,		// Address Input Line
	output reg [3:0] Data_A // Data Output
);
	
	reg [3:0] memory [15:0];
	
	always @ (posedge CLK)
		begin
			if (ENW)
				Data_A <= memory[Addr_A];
			else
				Data_A <= 4'bxxxx;
		end
	
	initial
		begin
		// Random Values so far. Will change as IBM 601 PowerPC
		// ROM Code is realized
			memory[0] = 4'b0010;
			memory[1] = 4'b0010;
			memory[2] = 4'b1110;
			memory[3] = 4'b0010;
			memory[4] = 4'b0100;
			memory[5] = 4'b1010;
			memory[6] = 4'b1100;
			memory[7] = 4'b0000;
			memory[8] = 4'b1010;
			memory[9] = 4'b0010;
			memory[10] = 4'b1110;
			memory[11] = 4'b0010;
			memory[12] = 4'b0100;
			memory[13] = 4'b1010;
			memory[14] = 4'b1100;
			memory[15] = 4'b0000;
		end
		
endmodule 