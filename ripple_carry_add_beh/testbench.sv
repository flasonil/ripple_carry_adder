
`timescale 1ns/1ps

module testbench ();
   
   logic [2:0] A;
   logic [2:0] B;
   logic [2:0] SUM;
   logic       CIN,COUT;
   
   ripple_carry_adder_beh dut ( .A(A), .B(B), .CIN(CIN), .SUM(SUM), .COUT(COUT) );
   
   initial
     begin
        
        A   = 0;
        B   = 0;
        CIN = 0;
        
        #2;
        
        A   = 7;
        B   = 3;
        CIN = 0;
        
        #2;
        
        A   = 2;
        B   = 1;
        CIN = 0;
        
        #2;

        $stop;
     end
   
endmodule
