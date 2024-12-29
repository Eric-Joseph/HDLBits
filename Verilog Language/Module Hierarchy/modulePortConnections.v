
module top_module ( input a, input b, output out );
    //Module Port Connections by Position
    //mod_a ins1 (a, b, out);
    
    //Module Port Connections by Name
    mod_a ins2 (.out(out), .in2(b), .in1(a));
    
endmodule
