
`timescale 1ns/1ps

module testbench ();
   
   logic [3:0] A;
   logic [3:0] B;
   logic [3:0] SUM;
   logic [3:0] COUT;
   logic       CIN;
   
   ripple_carry_adder_beh dut ( .A(A), .B(B), .CIN(CIN), .SUM(SUM), .COUT(COUT) );
   
   initial
     begin
        
        A   = 4'd0;
        B   = 4'd0;
        CIN = 4'd0;
        
        #2;
        
        A   = 4'd7;
        B   = 4'd3;
        CIN = 4'd0;
        
        #2;
        
        A   = 4'd2;
        B   = 4'd1;
        CIN = 4'd0;
        
        #2;

        $stop;
     end
   
endmodule
