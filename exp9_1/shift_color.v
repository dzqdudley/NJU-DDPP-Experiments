module shift_color(
	input clk_div,
	input [9:0] h_addr,
	output reg [23:0] data
 );
 
 always@(posedge clk_div)
 begin
		if(h_addr<=100)
			data=24'h0000ff;
		else if(h_addr<=200)
			data=24'h00ff00;
		else if(h_addr<=300)
			data=24'hff0000;
		else if(h_addr<=400)
			data=24'h00ffff;
		else if(h_addr<=500)
			data=24'hffff00;
		else if(h_addr <= 600)
			data=24'hff00ff;
		else
			data=24'h000000;
 end
 
 endmodule
 