`timescale 1ns / 1ps

// http://www.electronics-tutorials.ws/combination/comb_6.html

module bcdtoled_tb;
  
  // Inputs
  reg sw0;
  reg sw1;
  reg sw2;
  reg sw3;
  
  // Outputs
  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;
  
// Instantiate the Unit Under Test (UUT)
// bcdto7led_st uut (
  bcd_to_7led_bh uut (
    .sw0(sw0),
    .sw1(sw1),
    .sw2(sw2),
    .sw3(sw3),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g)
  );

initial begin
$dumpfile("dump.vcd"); $dumpvars;
  
// Initialize Inputs
  sw3 = 0; sw2 = 0; sw1 = 0; sw0 = 0;
  #100;
  $display("TC10 ");
  if ( {a,b,c,d,e,f,g} != 7'b0000001 ) $display ("Result is wrong %b", {a,b,c,d,e,f,g});
                                                 
// Your test cases go here (9 left)
  sw3 = 0; sw2 = 0; sw1 = 0; sw0 = 1; //1
  #100;
  $display("TC11 ");
  if ( {a,b,c,d,e,f,g} != 7'b1001111 ) $display ("Result is wrong %b", {a,b,c,d,e,f,g});
                                                                                  
  sw3 = 0; sw2 = 0; sw1 = 1; sw0 = 0; //2
  #100;
  $display("TC12 ");
  if ( {a,b,c,d,e,f,g} != 7'b0010010 ) $display ("Result is wrong %b", {a,b,c,d,e,f,g});
                                                                                  
  sw3 = 0; sw2 = 0; sw1 = 1; sw0 = 1; //3
  #100;
  $display("TC13 ");
  if ( {a,b,c,d,e,f,g} != 7'b0000110 ) $display ("Result is wrong %b", {a,b,c,d,e,f,g});
  
  sw3 = 0; sw2 = 1; sw1 = 0; sw0 = 0; //4
  #100;
  $display("TC14 ");
  if ( {a,b,c,d,e,f,g} != 7'b1001100 ) $display ("Result is wrong %b", {a,b,c,d,e,f,g});
                                                 
  sw3 = 0; sw2 = 1; sw1 = 0; sw0 = 1; //5
  #100;
  $display("TC15 ");
  if ( {a,b,c,d,e,f,g} != 7'b0100100 ) $display ("Result is wrong %b", {a,b,c,d,e,f,g});
                                   
  sw3 = 0; sw2 = 1; sw1 = 1; sw0 = 0; //6
  #100;
  $display("TC16 ");
  if ( {a,b,c,d,e,f,g} != 7'b0100001 ) $display ("Result is wrong %b", {a,b,c,d,e,f,g});
                                   
  sw3 = 0; sw2 = 1; sw1 = 1; sw0 = 1; //7
  #100;
  $display("TC17 ");
  if ( {a,b,c,d,e,f,g} != 7'b0001111 ) $display ("Result is wrong %b", {a,b,c,d,e,f,g});
                                                 
  sw3 = 1; sw2 = 0; sw1 = 0; sw0 = 0; //8
  #100;
  $display("TC18 ");
  if ( {a,b,c,d,e,f,g} != 7'b0000000 ) $display ("Result is wrong %b", {a,b,c,d,e,f,g});
                                                                    
  sw3 = 1; sw2 = 0; sw1 = 0; sw0 = 1; //9
  #100;
  $display("TC19 ");
  if ( {a,b,c,d,e,f,g} != 7'b0000100 ) $display ("Result is wrong %b", {a,b,c,d,e,f,g});                                  
                                                 
end
endmodule
