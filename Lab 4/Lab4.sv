module Lab4(
	input logic rb,
	input logic clk,
	input logic dl,
	output logic LED1,
	output logic LED2,
	output logic LED3,
	output logic LED4
	);
	
	logic [3:0] cs, ns;
	
	assign ns[0]=dl ? cs[3] : cs[1];
	assign ns[1]=dl ? cs[0] : cs[2];
	assign ns[2]=dl ? cs[1] : cs[3];
	assign ns[3]=dl ? cs[2] : cs[0];
	
	always_ff @ (posedge clk, negedge rb)
	
	if  ( !rb )  cs  <=  4'b1000 ;  // Reset (rb=0 or !rb) has higher priority and sets q to 1000 (initial state)
	else         cs  <=  ns      ;
		
	assign LED1=cs[0]|cs[1]|cs[2];
	assign LED2=cs[0]|cs[1]|cs[3];
	assign LED3=cs[0]|cs[2]|cs[3];
	assign LED4=cs[1]|cs[2]|cs[3];

endmodule
		
