module dadda_mul_4bit(input [3:0] a, input [3:0] b, output [7:0] p);
  wire[18:0] w;
  assign p[0] = a[0]&b[0];
  ha_df ha1((a[3]&b[0]),(a[2]&b[1]),w[1],w[2]);
  ha_df ha2((a[3]&b[1]),(a[2]&b[2]),w[3],w[4]);
  ha_df ha3((a[2]&b[0]),(a[1]&b[1]),w[5],w[6]);
  fa_df fa1((a[1]&b[2]),(a[0]&b[3]),w[1],w[7],w[8]);
  fa_df fa2((a[1]&b[3]),w[2],w[3],w[9],w[10]);
  fa_df fa3((a[3]&b[2]),(a[2]&b[3]),w[4],w[11],w[12]);
  ha_df ha4((a[0]&b[1]),(a[1]&b[0]),p[1],w[13]);
  fa_df fa4((a[0]&b[2]),w[5],w[13],p[2],w[14]);
  fa_df fa5(w[6],w[7],w[14],p[3],w[15]);
  fa_df fa6(w[8],w[9],w[15],p[4],w[16]);
  fa_df fa7(w[10],w[11],w[16],p[5],w[17]);
  fa_df fa8((a[3]&b[3]),w[12],w[17],p[6],p[7]);
endmodule
