module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] d2, d3, d4;
    my_dff8 ins1 (clk, d, d2);
    my_dff8 ins2 (clk, d2, d3);
    my_dff8 ins3 (clk, d3, d4);
    
    always @(*) begin
        case(sel)
            2'b00 : q <= d;
            2'b01 : q <= d2;
            2'b10 : q <= d3;
            2'b11 : q <= d4;
        endcase
    end
    
endmodule
