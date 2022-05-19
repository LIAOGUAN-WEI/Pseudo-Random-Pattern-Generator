module prpg(clk, set ,Q1);
input clk, set;
output [2:0] Q1;
reg   [2:0] Q1; 


always@ (posedge clk)
begin
if(set) begin
  Q1 = 3'd6;  
end
else begin
Q1[0] <= Q1[0] ^ Q1[2];
Q1[1] <= Q1[0];
Q1[2] <= Q1[1];
end
end
endmodule