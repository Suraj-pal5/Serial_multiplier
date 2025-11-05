`timescale 1ns / 1ps
module Serial_multiplier16bit(
    input [15:0] Serial_multin1,
    input [15:0] Serial_multin2,
    input clk,
    input rst,
    output reg [31:0] Serial_multout
);

reg [3:0] count;
reg [31:0] Parproduct_sum;

always @(posedge clk) begin
    if (rst) 
        count <= 4'b0;
    else 
        count <= count + 1;
end

wire [15:0] Serial_multin2_shift;
assign Serial_multin2_shift = Serial_multin2 >> count;

wire [31:0] Parproduct;
assign Parproduct = {16'b0, {16{Serial_multin2_shift[0]}} & Serial_multin1};

wire [31:0] Parproduct_shift;
assign Parproduct_shift = Parproduct << count;

always @(posedge clk) begin
    if (rst) 
        Parproduct_sum <= 32'b0;
    else 
        Parproduct_sum <= Parproduct_sum + Parproduct_shift;
end

always @(posedge clk) begin
    if (rst) 
        Serial_multout <= 32'b0;
    else 
        Serial_multout <= Parproduct_sum;
end

endmodule
