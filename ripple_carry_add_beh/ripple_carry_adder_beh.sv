module ripple_carry_adder_beh
(
	input logic [3:0] A,
	input logic [3:0] B,
	input logic	  CIN,

	output logic [3:0] SUM,
	output logic [3:0] COUT
);

	genvar i;

	assign SUM[0] = A[0] ^ B[0] ^ CIN;

	assign COUT[0] = (A[0] & B[0]) | (CIN & (A[0] ^ B[0]));
	
	for(i=1; i<4; i++) begin                                                 
		assign SUM[i] = A[i] ^ B[i] ^ COUT[i-1];                               
		assign COUT[i] = (A[i] & B[i]) | (COUT[i-1] & (A[i] ^ B[i]));
	end

endmodule
