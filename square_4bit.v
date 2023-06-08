module square_4bit_20bei0013(input [3:0] a, output [7:0] p );
  wire[5:0] w;
  supply0 zero;
  assign p[0]=a[0];
  assign p[1]= zero;
  assign p[2]= a[1]&(~a[0]);
  ha_df ha1((a[1]&a[0]),(a[2]&a[0]),p[3],w[1]);
  fa_df fa1((a[3]&a[0]),(a[2]&(~a[1])),w[1],p[4],w[2]);
  fa_df fa2((a[2]&a[1]),(a[3]&a[1]),w[2],p[5],w[3]);
  ha_df ha2((a[3]&(~a[2])),w[3],p[6],w[4]);
  ha_df ha3((a[3]&a[2]),w[4],p[7],w[5]);
endmodule
