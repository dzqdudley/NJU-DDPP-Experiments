module exp9_1( 
 input clk,
 output hsync, // 行 同 步 和 列 同 步 信 号
 output vsync,
 output valid, //消隐信号
 output vgn_sync_n,
 output vga_clk,
 output [7:0] vga_r, // 红 绿 蓝 颜 色 信 号
 output [7:0] vga_g,
 output [7:0] vga_b);
 
 wire clk_div;
 wire [23:0] vga_data;
 wire [9:0] h_addr;
 wire [9:0] v_addr;
 
 assign vgn_sync_n=0;
 
 clkgen #(25000000) my_vgaclk(clk,1'b0,1'b1,clk_div);
 
 vga_ctrl(clk_div,1'b0,vga_data, h_addr, v_addr,vga_clk, hsync, vsync, valid, vga_r, 
 vga_g, vga_b);
 
 shift_color(clk_div,h_addr,vga_data);

endmodule

