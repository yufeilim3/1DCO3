/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder8bit_7 (
    input [7:0] a,
    input [7:0] b,
    input [1:0] alufn,
    output reg [7:0] s,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  wire [8-1:0] M_myadder_s;
  wire [1-1:0] M_myadder_z;
  wire [1-1:0] M_myadder_v;
  wire [1-1:0] M_myadder_n;
  reg [8-1:0] M_myadder_a;
  reg [8-1:0] M_myadder_b;
  reg [1-1:0] M_myadder_alufn0;
  adder_11 myadder (
    .a(M_myadder_a),
    .b(M_myadder_b),
    .alufn0(M_myadder_alufn0),
    .s(M_myadder_s),
    .z(M_myadder_z),
    .v(M_myadder_v),
    .n(M_myadder_n)
  );
  
  wire [8-1:0] M_mymultiplier_mult;
  reg [8-1:0] M_mymultiplier_a;
  reg [8-1:0] M_mymultiplier_b;
  multiplier_12 mymultiplier (
    .a(M_mymultiplier_a),
    .b(M_mymultiplier_b),
    .mult(M_mymultiplier_mult)
  );
  
  always @* begin
    M_myadder_a = a;
    M_myadder_b = b;
    M_myadder_alufn0 = alufn[0+0-:1];
    M_mymultiplier_a = a;
    M_mymultiplier_b = b;
    
    case (alufn[0+1-:2])
      default: begin
        s = 1'h0;
        z = 1'h0;
        v = 1'h0;
        n = 1'h0;
      end
      2'h0: begin
        s = M_myadder_s;
        z = M_myadder_z;
        v = M_myadder_v;
        n = M_myadder_n;
      end
      2'h1: begin
        s = M_myadder_s;
        z = M_myadder_z;
        v = M_myadder_v;
        n = M_myadder_n;
      end
      2'h2: begin
        s = M_mymultiplier_mult;
        z = M_myadder_z;
        v = M_myadder_v;
        n = M_myadder_n;
      end
      2'h3: begin
        s = M_myadder_s;
        z = M_myadder_z;
        v = M_myadder_v;
        n = M_myadder_n;
      end
    endcase
  end
endmodule
