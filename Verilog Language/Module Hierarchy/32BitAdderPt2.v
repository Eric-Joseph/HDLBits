module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);// add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    wire cout1;
    add16 ins1 (a[15:0], b[15:0], 0, sum[15:0], cout1);
    add16 ins2 (a[31:16], b[31:16], cout1, sum[31:16], 0);

endmodule

//Each 16-bit adder utilizes 16 1-bit adders to get there sum and cout values
module add1 ( input a, input b, input cin, output sum, output cout );
	assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule
