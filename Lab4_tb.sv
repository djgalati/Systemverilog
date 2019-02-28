`timescale  1ns / 1ns
// Testbench for traffic lights controller
//
module  Lab4_tb ;

// Parameters
//
parameter  per  =  10 ;  // Clock period

// I/O and variables
//
logic  rb;  
logic  clk;   // Declare rising-edge clock
logic  dl;  
logic  LED1; 
logic  LED2; 
logic  LED3; 
logic  LED4; 
integer  i ;  // Declare integer variable for stimulus loops 

// Define reset
//
initial  rb  =  1'b0 ;          // Activate reset at t=0 (make it 0=low)
initial  #(per)  rb  =  1'b1 ;  // Wait for 1 clock period and de-activate reset (make it 1=high)

// Define clock
//
initial  clk  =  1'b0 ;  // Initialize clock to 0 at t=0
always  #(per/2)  clk  =  ~ clk ;  // Every half period of time (per/2), make clock inverse of itself, i.e. 0 -> 1 -> 0 -> 1 -> and so on

// Device under test
//
Lab4  dut  ( 
  .rb( rb ) ,  
  .clk( clk ) ,  
  .dl( dl ) , 
  .LED1 ( LED1 ) ,  
  .LED2 ( LED2 ) ,  
  .LED3 ( LED3 ),  
  .LED4 ( LED4 )   
) ;

// Stimulus and simulation control
//
initial begin         // Start simulation at t=0
  for  ( i  =  0 ;  i  <  per ;  i++ )  begin
    dl  =  1'b0 ;  
    #(8*per) ;     // Wait for 4 periods of clock without any further changes
    dl  =  1'b1 ;  
    #(8*per);    // Wait for 4 period of clock without any further changes
  end              // Repeat the loop 10 times, this means light sequencing is enabled once in every 10 cycles
  $stop ;          // Stop the simulation without exiting simulator
end

endmodule
