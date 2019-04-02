`timescale  1ns / 1ns

module  Lab6_tb() ;



parameter  PER  =  10 ;  // Simulation period

// I/O and variables
//
logic [7:0] A;
logic [2:0] D;
logic [7:0] Y;
logic [7:0] Z;
logic [2:0] S;
logic [2:0] T;
logic clk;
logic rb;      

initial rb = 1'b1;
initial clk = 1'b0;
always #(PER/2) clk = ~ clk;

// Device under test
//
Lab6  dut  (
  .*
) ;

// Stimulus and simulation control
//


initial begin         // Start simulation at t=0
 
 #(PER/2+1);
 
 rb = 1'b0;
 
 #(PER/2+1);
 
 A=8'hA3;
 D=3'b111;
 S=3'b111;
 T=3'b111;
 
 #(PER);

 A=8'h58;
 D=3'b011;
 S=3'b111;
 T=3'b011;

 #(PER);
 
 A=8'hA3;
 D=3'b110;
 S=3'b011;
 T=3'b110;
 
 #(PER);
 
 A=8'h58;
 D=3'b010;
 S=3'b110;
 T=3'b010;

 #(PER);
 
 A=8'hA3;
 D=3'b101;
 S=3'b010;
 T=3'b101;
 
 #(PER);
 
 A=8'h58;
 D=3'b001;
 S=3'b101;
 T=3'b001;

 #(PER);
 
 A=8'h4D;
 D=3'b100;
 S=3'b001;
 T=3'b100;
 
 #(PER);
 
 A=8'h37;
 D=3'b000;
 S=3'b100;
 T=3'b000;
 
 #(PER);
 
 A=8'h91;
 D=3'b111;
 S=3'b000;
 T=3'b111;
 
 #(PER);
 
 A=8'h00;
 D=3'b000;
 S=3'b000;
 T=3'b000;
 //rb = 1'b1;
 
 //#(PER+1);
 
 //rb = 1'b0;
 
 #(50);
 
 $stop ;
end

endmodule
