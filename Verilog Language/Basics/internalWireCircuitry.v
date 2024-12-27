`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   );
    
    wire and_result1;
    wire and_result2;
    wire or_result;
    
    assign and_result1 = a & b;
    assign and_result2 = c & d;
	assign or_result = and_result1 | and_result2;
    assign out = or_result;
    assign out_n = !(or_result);

endmodule
