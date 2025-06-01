`timescale 1ns/1ps
module testbench;
    reg a, b;
    wire y;

    my_module uut(.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule

