module square_4bit_tb();
  reg[3:0] a;
  wire[7:0] p;
  reg[7:0] check;
  square_4bit uut(a,p);
  initial repeat(10) begin
    a = $random;
    check = a**2;
    #10
    $display($time,"%d^2 = %d(%d)",a,p,check);
  end
endmodule
