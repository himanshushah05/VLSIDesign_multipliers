module sma_signed_tb();
  reg signed [3:0] a,b;
  wire signed [7:0] p;
  reg signed [7:0] check;
 sma_signed_20bei0013 uut(a,b,p);
  initial repeat(16) begin
    a = $random;
    b = $random;
    check = a*b;
    #10
    $display($time,"%d*%d = %d(%d)",a,b,p,check);
  end
endmodule
