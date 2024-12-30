module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
	
    wire cout1;
    wire [15:0] sumSelect0, sumSelect1, sum2;
    
    //For lower 16 bits of sum
    add16 ins1 (a[15:0], b[15:0], 0, sum[15:0], cout1);
    
    //For upper 16 bits of sum
    add16 ins2 (a[31:16], b[31:16], 0, sumSelect0, 0);
    add16 ins3 (a[31:16], b[31:16], 1, sumSelect1, 0);
    
    //Combinational Logic for multiplexer when cout1 is 0 or 1
    assign sum[31:16] = (cout1 == 0) ? sumSelect0 : sumSelect1;
endmodule
