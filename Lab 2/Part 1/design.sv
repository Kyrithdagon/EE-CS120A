module and4(
input wire enable ,
input wire a,
input wire b,
input wire c,
output wire r
);
//
assign r = enable & a & b & c ;
endmodule
//---------------------------------------------
module decoder_st(
// I/0 ports
input wire enable ,
input wire a ,
input wire b ,
input wire c ,
output wire d0,
output wire d1,
output wire d2,
output wire d3,
output wire d4,
output wire d5,
output wire d6,
output wire d7
);

// Using the and4 module to set all outputs
and4 c1(enable, ~a, ~b, ~c, d0) ;
// Your code goes here (7 cases left to implement)
  and4 c2(enable, ~a, ~b, c, d1) ;
  and4 c3(enable, ~a, b, ~c, d2) ;
  and4 c4(enable, ~a, b, c, d3) ;
  and4 c5(enable, a, ~b, ~c, d4) ;
  and4 c6(enable, a, ~b, c, d5) ;
  and4 c7(enable, a, b, ~c, d6) ;
  and4 c8(enable, a, b, c, d7) ;
  
endmodule
//----------------------------------------------------------
module decoder_bh(
// I/0 ports
input wire enable ,
input wire a ,
input wire b ,
input wire c ,
output reg d0,
output reg d1,
output reg d2,
output reg d3,
output reg d4,
output reg d5,
output reg d6,
output reg d7
);
  
// Internal wire
wire [3:0] bundle ;
assign bundle = {enable , a, b, c } ;
  S
// Behavioral description
always @(*) begin
d0 = 1'b0 ;
d1 = 1'b0 ;
d2 = 1'b0 ;
d3 = 1'b0 ;
d4 = 1'b0 ;
d5 = 1'b0 ;
d6 = 1'b0 ;
d7 = 1'b0 ;
  
// Setting the correct output
case (bundle)
	4'b1000: d0 = 1'b1 ;
	4'b1001: d1 = 1'b1 ;
	4'b1010: d2 = 1'b1 ;
	4'b1011: d3 = 1'b1 ;
	4'b1100: d4 = 1'b1 ;
	4'b1101: d5 = 1'b1 ;
	4'b1110: d6 = 1'b1 ;
	4'b1111: d7 = 1'b1 ;
  
	default : begin
	d0 = 1'b0 ;
	end
  endcase
end
endmodule
