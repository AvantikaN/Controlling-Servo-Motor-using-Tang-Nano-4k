`timescale 1ns / 1ps
// rotate servo to right
module top(
input clk,
output servo);

//create a simple counter
reg [19:0] counter=0;

always @(posedge clk) begin
if (counter < 481000) counter <= counter + 1; //count till 100
else 
counter <=0; //reset to 0
end

//11200(1ms)->left , 40350(1.5ms)->neutral , 69500(2ms)->right
begin
  assign servo = (counter<69500) ? 1:0;  //assign servo to 1 only if counter less than 69500
end

endmodule
