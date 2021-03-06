module print_hex( datain, dataout);
	input [3:0] datain;
	output reg [6:0] dataout;
	
	always @(datain)
	begin
		case (datain)
			0:dataout=7'b1000000;
			1:dataout=7'b1111001;
			2:dataout=7'b0100100;
			3:dataout=7'b0110000;
			4:dataout=7'b0011001;
			5:dataout=7'b0010010;
			6:dataout=7'b0000010;
			7:dataout=7'b1111000;
			8:dataout=7'b0000000;
			9:dataout=7'b0010000;
			10:dataout=7'b0001000;
			11:dataout=7'b0000011;
			12:dataout=7'b1000110;
			13:dataout=7'b0100001;
			14:dataout=7'b0000110;
			15:dataout=7'b0001110;
			default:dataout=7'b1111111;
		endcase
	end
	
endmodule 