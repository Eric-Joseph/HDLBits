module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0] sum1, sum2;
    wire cin2;
    add16 ins1 (a[15:0], b[15:0], 0, sum1, cin2);
    add16 ins2 (a[31:16], b[31:16], cin2, sum2, 0);
    assign sum = {sum2, sum1};
    
    
    
endmodule
