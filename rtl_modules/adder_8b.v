module adder #(
   parameter BIT_SZ = 8
)(
   input  logic              rst_l,
   input  logic              clk,
   input  logic [BIT_SZ-1:0] a,
   input  logic [BIT_SZ-1:0] b,
   output logic [BIT_SZ-1:0] y
);


logic [(2*BIT_SZ)-1:0] y_temp;

assign y_temp=a+b;

always @(posedge clk or negedge rst_l)
  if (~rst_l) y <= 'h0;
  else        y <= y_temp[BIT_SZ-1:0];

endmodule
