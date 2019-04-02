module Lab5(
	input logic [7:0] A,
	input logic [7:0] B,
	input logic [2:0] fs,
	output logic [7:0] Y
	);
	
	

	
		always_comb
			case (fs)
				3'b000 : Y=(A&B);
				3'b001 : Y=(A|B);
				3'b010 : Y=(A^B);
				3'b011 : Y=(~A);
				3'b100 : Y=unsigned'(A+B);
				3'b101 : Y=unsigned'(A+(~B+1));
				3'b110 : Y=signed'(A+B);
				3'b111 : Y=signed'(A+(~B+1));
			endcase


endmodule
	