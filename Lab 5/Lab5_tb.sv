`timescale  1ns / 1ns

module  Lab5_tb() ;



parameter  PER  =  10 ;  // Simulation period

// I/O and variables
//
logic  [7:0]  A ; 
logic  [7:0]  B ; 
logic  [2:0]  fs; 
logic  [7:0]  Y ;             

// Device under test
//
Lab5  dut  (
  .A( A ) ,  
  .Y( Y ) ,   
  .B( B ) ,
  .fs( fs)
) ;

// Stimulus and simulation control
//
initial begin         // Start simulation at t=0
 A=8'hA3;
 B=8'h4D;
 fs= 3'b000;
 
 #(PER);
 
 A=8'h58;
 B=8'h37;
 fs=3'b000;
 
 #(PER);
 
 A=8'hA3;
 B=8'h4D;
 fs=3'b001;
 
 #(PER);
 
 A=8'h58;
 B=8'h37;
 fs=3'b001;
 
 #(PER);
 
 A=8'hA3;
 B=8'h4D;
 fs=3'b010;
 
 #(PER);
 
 A=8'h58;
 B=8'h37;
 fs=3'b010;
 
 #(PER);
 
 A=8'h4D;
 B=8'hA3;
 fs=3'b011;
 
 #(PER);
 
 A=8'h37;
 B=8'h58;
 fs=3'b011;
 
 #(PER);
 
 A=8'hA3;
 B=8'h4D;
 fs=3'b100;
 
 #(PER);
 
 A=8'h58;
 B=8'h37;
 fs=3'b100;
 
 #(PER);
 
 A=8'hA3;
 B=8'h4D;
 fs=3'b101;
 
 #(PER);
 
 A=8'h58;
 B=8'h37;
 fs=3'b101;
 
 #(PER);
 
 A=8'hA3;
 B=8'h4D;
 fs=3'b110;
 
 #(PER);
 
 A=8'h58;
 B=8'h37;
 fs=3'b110;
 
 #(PER);
 
 A=8'h4D;
 B=8'hA3;
 fs=3'b111;
 
 #(PER);
 
 A=8'h37;
 B=8'h58;
 fs=3'b111;
 
 #(PER);
 
 $stop ;
end

endmodule
