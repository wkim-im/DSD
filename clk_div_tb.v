`include "clk_div.v"
`timescale 10ns/1ns
module clk_div_tb;

    reg clk_50=1;
    wire clk_1;

    clk_div clkdiv(.clk_50(clk_50),.clk_1(clk_1));
    
    initial begin
        $dumpfile("clk_div_tb.vcd");
        $dumpvars(0, clk_div_tb);
    end
    
    always #1 clk_50 = ~clk_50;  // 주기: 2×1 = 2단위 시간 (20ns 기준 = 20ns 주기)

    initial begin
        #300000000 $finish;
    end

endmodule
