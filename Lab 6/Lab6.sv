module Lab6(
	input logic [7:0] A,
	input logic [2:0] D,
	output logic [7:0] Y,
	output logic [7:0] Z,
	input logic [2:0] S,
	input logic [2:0] T,
	input logic clk,
	input logic rb
	);
	
	logic [7:0] R0, R1, R2, R3, R4, R5, R6, R7;
	
	
	always_ff @ ( posedge clk ) 
	if( rb ) 
	begin
		 R0<=R1<=R2<=R3<=R4<=R5<=R6<=R7<=8'h00;
	end
	else
	begin
		case (D)
			3'b000 : R0=A;
			3'b001 : R1=A;
			3'b010 : R2=A;
			3'b011 : R3=A;
			3'b100 : R4=A;
			3'b101 : R5=A;
			3'b110 : R6=A;
			3'b111 : R7=A;
		endcase
		
		case (S)
			3'b000 : Y=R0;
			3'b001 : Y=R1;
			3'b010 : Y=R2;
			3'b011 : Y=R3;
			3'b100 : Y=R4;
			3'b101 : Y=R5;
			3'b110 : Y=R6;
			3'b111 : Y=R7;
		endcase
	
		case (T)
			3'b000 : Z=R0;
			3'b001 : Z=R1;
			3'b010 : Z=R2;
			3'b011 : Z=R3;
			3'b100 : Z=R4;
			3'b101 : Z=R5;
			3'b110 : Z=R6;
			3'b111 : Z=R7;
		endcase
	end
endmodule
	