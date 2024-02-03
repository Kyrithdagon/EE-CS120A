module and3(
input wire a,
input wire b,
input wire c,
output wire r
);
assign r = a & b & c ;
endmodule

//-------------------------------------------
// structural model
module mux_st(
// Ports I/O
input wire s1,
input wire s0,
input wire i0,
input wire i1,
input wire i2,
input wire i3,
output wire d
);
wire r1, r2, r3, r4 ;
and3 c1 ( ~s1,~s0, i0, r1 ) ;
// Your code goes here (3 cases left)
  and3 c2 ( ~s1,s0, i1, r2 ) ;
  and3 c3 ( s1,~s0, i2, r3 ) ;
  and3 c4 ( s1,s0, i3, r4 ) ;
  
assign d = r1 | r2 | r3 | r4 ;
endmodule

//-----------------------------------------------
// behavioral model
module mux_bh(
// Ports I/O
input wire s1,
input wire s0,
input wire i0,
input wire i1,
input wire i2,
input wire i3,
output reg d
) ;
always @(*) begin
	d = 1'b0 ;
	case ( {s1,s0} )
		2'b00 : d = i0 ;
// your code goes here (3 cases left)
      	2'b01 : d = i1 ;
      	2'b10 : d = i2 ;
      	2'b11 : d = i3 ;
      	
endcase
end
endmodule
