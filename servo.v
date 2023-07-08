`timescale 1ns / 1ps
//rotates servo to left or right according to the pressing of push buttons
module top(
input clk,
input pb1,
input pb2,
output servo);

//create a simple counter
reg [20:0] counter=0;
reg y=0;
reg [19:0] x;


always @(posedge clk) begin
if (counter < 500000) counter <= counter + 1; //count till 100
else 
counter <=0; //reset to 0
y<=y+1;
end

always @(posedge y) begin
if(pb1 & !pb2) x<=69500;
else if(pb1 & pb2) x<=40350;
else if(!pb1 & pb2) x<=11200;
end

//11200(1ms)->left , 40350(1.5ms)->neutral , 69500(2ms)->right -- rotate servo by manually putting any of these values between the extremes
begin
assign servo = (counter<x) ? 1:0;  //assign servo to 1 only if counter less than x
end

endmodule
