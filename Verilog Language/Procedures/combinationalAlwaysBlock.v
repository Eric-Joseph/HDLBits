module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    
    assign out_assign = a & b;            // Assign Statement
  always @(*) out_alwaysblock = a & b;  //Combinational Always Block

endmodule
