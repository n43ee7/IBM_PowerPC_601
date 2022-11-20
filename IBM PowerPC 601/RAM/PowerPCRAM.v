module PowerPCRAM(
	input [7:0] Data_A, Data_B,	// Input Data > RAM D
	input [5:0] Addr_A, Addr_B, 	// Input Address > RAM A
	input ENW_A, ENW_B,				// RAM Write Enable
	input CLK,							// System Clock
	output reg [7:0] q_A, q_B 		// RAM output Register
	);
	
	reg [7:0] RAM [63:0]; // 8x64 Bit Register for RAM DATA
	
	// Being at the postive edge of the clock
	always @ (posedge CLK)
		begin
			if (ENW_A)
				RAM[Addr_A] <= Data_A;
			else
				q_A <= RAM[Addr_A];
			end
	
	always @ (posedge CLK)
		begin
			if (ENW_B)
				RAM[Addr_B] <= Data_B;
			else
				q_B <= RAM[Addr_B];
			end
				
endmodule