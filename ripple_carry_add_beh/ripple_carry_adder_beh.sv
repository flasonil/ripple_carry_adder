

module ripple_carry_adder_beh
(
	input logic [2:0] A,
	input logic [2:0] B,
	input logic	  CIN,

	output logic [2:0] SUM,
	output logic	   COUT
);

logic INT0,INT1;

assign SUM[0] = A[0] ^ B[0] ^ CIN;

assign INT0 = A[0] & B[0];

assign SUM[1] = A[1] ^ B[1] ^ INT0;

assign INT1 = (A[1] & B[1])|(INT0 & (A[1] ^ B[1]));

assign SUM[2] = A[2] ^ B[2] ^ INT1;

assign COUT = (A[2] & B[2])|(INT1 & (A[2] ^ B[2]));

endmodule