module top_module ( input clk, input d, output q );
	wire d2, d3;	//Represents the connections between the D Flip Flops
    my_dff ins1(clk, d, d2);	//Instantiates the registers with the ports of the top module
    my_dff ins2(clk, d2, d3);
    my_dff ins3(clk, d3, q);
endmodule
