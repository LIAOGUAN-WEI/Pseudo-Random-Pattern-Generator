`timescale 1ns/1ps
module testbench;
reg  clk;
reg  set;
output [2:0] Q1;
parameter PERIOD = 20;
parameter real DUTY_CYCLE = 0.5;
parameter OFFSET = 0;
initial
begin
#OFFSET;
forever
begin
clk = 1'b0;
#(PERIOD-(PERIOD*DUTY_CYCLE)) clk = 1'b1;
#(PERIOD*DUTY_CYCLE);
end
end
initial begin
set = 1;
#50 set = 0;
#1000 $finish;
end


prpg prpg_tb(.clk(clk),.set(set),.Q1(Q1));
initial begin
    $dumpfile("simple.vcd");
    $dumpvars(0, prpg_tb);
end
endmodule