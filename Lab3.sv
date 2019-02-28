module Lab3(
	input logic init,
	input logic clk,
	output logic LED1,
	output logic LED2,
	output logic LED3,
	output logic LED4,
	output logic LED5
	);
	
	logic [7:0] cs, ns;
	

	assign ns[0]=cs[7]|init;
	assign ns[1]=cs[0];
	assign ns[2]=cs[1];
	assign ns[3]=cs[2];
	assign ns[4]=cs[3];
	assign ns[5]=cs[4];
	assign ns[6]=cs[5];
	assign ns[7]=cs[6];
	
	
	always_ff @ (posedge clk) cs<=ns;
		assign LED1=1;
		assign LED2=cs[1]|cs[2]|cs[3]|cs[4]|cs[5]|cs[6]|cs[7];
		assign LED3=cs[2]|cs[3]|cs[4]|cs[5]|cs[6];
		assign LED4=cs[3]|cs[4]|cs[5];
		assign LED5=cs[4];

	
endmodule
	