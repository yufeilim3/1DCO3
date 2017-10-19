/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shifter_9 (
    input [7:0] a,
    input [7:0] b,
    input [1:0] alufn,
    output reg [7:0] shift
  );
  
  
  
  always @* begin
    
    case (alufn[0+1-:2])
      default: begin
        shift = 1'h0;
      end
      2'h0: begin
        shift = a << b;
      end
      2'h1: begin
        shift = a >> b;
      end
      2'h2: begin
        shift = 1'h0;
      end
      2'h3: begin
        shift = $signed(a) >>> b;
      end
    endcase
  end
endmodule
