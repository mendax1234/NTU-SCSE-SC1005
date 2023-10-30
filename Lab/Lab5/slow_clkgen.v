// divides the 100Mz system clock (clk) by 2^25 to give around 1/3 s period

module slow_clkgen (input clk, rst, output clk_out);

	reg [24:0] counter;

	always @(posedge clk)
	begin
         if (rst) 
             counter <= 25'd0;
         else
             counter <= counter + 1'b1;
	end


	assign clk_out = counter[24];

endmodule