`timescale 1ns / 1ps
module Serial_multiplier16bit_tb;
    reg [15:0] Serial_multin1;
    reg [15:0] Serial_multin2;
    reg clk;
    reg rst;
    wire [31:0] Serial_multout;

    Serial_multiplier16bit uut(
        .Serial_multin1(Serial_multin1),
        .Serial_multin2(Serial_multin2),
        .clk(clk),
        .rst(rst),
        .Serial_multout(Serial_multout)
    );

    // Clock generation
    initial begin 
        clk = 1'b1;
        forever #5 clk = ~clk;
    end 

    // Stimulus block
    initial begin 
        rst = 1;
        Serial_multin1 = 16'b0;
        Serial_multin2 = 16'b0;
        #5;
        rst = 0;
        Serial_multin1 = 16'b1111111111111111; 
        Serial_multin2 = 16'b1111111111111111; 
        #170;
        $finish;
    end 

    // Monitor Outputs
    initial begin
  $monitor("Time: %0dns,Serial_multin1=%d,Serial_multin2=%d,Serial_multout=%b",$time, Serial_multin1,Serial_multin2,Serial_multout);
    end
endmodule
