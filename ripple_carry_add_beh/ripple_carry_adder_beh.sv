module ripple_carry_adder_beh
(
	input logic [3:0] A,
	input logic [3:0] B,
	input logic	  CIN,

	output logic [3:0] SUM,
	output logic [3:0] COUT
);


	/* ------------------------------------------------------------------------- 
	for(int i=1; i<3; i++) begin                                                 
		assign SUM[i] = A[i] ^ B[i] ^ COUT[i];                               
		assign COUT[i] = (A[i] & B[i]) | (COUT[i-1] & (A[i] ^ B[i]));
	end                                                                          
	---------------------------------------------------------------------------*/
	
	assign SUM[0] = A[0] ^ B[0] ^ CIN;

	assign COUT[0] = (A[0] & B[0]) | (CIN & (A[0] ^ B[0]));

	//assign SUM[1] = A[1] ^ B[1] ^ COUT[0];

	//assign COUT[1] = (A[1] & B[1]) | (COUT[0] & (A[1] ^ B[1]));

	//assign SUM[2] = A[2] ^ B[2] ^ COUT[1];

	//assign COUT[2] = (A[2] & B[2]) | (COUT[1] & (A[2] ^ B[2]));
	
	for(int i=1; i<4; i++) begin                                                 
		assign SUM[i] = A[i] ^ B[i] ^ COUT[i-1];                               
		assign COUT[i] = (A[i] & B[i]) | (COUT[i-1] & (A[i] ^ B[i]));
	end

endmodule
