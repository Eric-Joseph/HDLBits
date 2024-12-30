module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire cout1; //Carry of 2nd full adder for upper 16 bits of sum
    wire [31:0] xorResult = b ^ {32{sub}};	//Xor Result of input b for add/subtract

    //Full adders used in adder-subtractor module
    add16 ins1 (a[15:0], xorResult[15:0], sub, sum[15:0], cout1);
    add16 ins2 (a[31:16], xorResult[31:16], cout1, sum[31:16], 0);

endmodule
