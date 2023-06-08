module wallace_4bit(input [3:0] a,  input [3:0] b,  output [7:0] p  );
  wire[23:0] w;
  //stage 0
  assign p[0] = a[0]&b[0];
  ha_df ha1((a[0]&b[1]),(a[1]&b[0]),p[1],w[1]);
  fa_df fa1((a[0]&b[2]),(a[1]&b[1]),(a[2]&b[0]),w[2],w[3]);
  fa_df fa2((a[1]&b[2]),(a[2]&b[1]),(a[3]&b[0]),w[4],w[5]);
  fa_df fa3((a[1]&b[3]),(a[2]&b[2]),(a[3]&b[1]),w[6],w[7]);
  ha_df ha2((a[3]&b[2]),(a[2]&b[3]),w[8],w[9]);
  //stage 1
  ha_df ha3(w[1],w[2],p[2],w[10]);
  fa_df fa4((a[0]&b[3]),w[3],w[4],w[11],w[12]);
  ha_df ha4(w[5],w[6],w[13],w[14]);
  ha_df ha5(w[7],w[8],w[15],w[16]);
  ha_df ha6((a[3]&b[3]),w[9],w[17],w[18]);
  //stage 2
  ha_df ha7(w[10],w[11],p[3],w[19]);
  fa_df fa5(w[12],w[19],w[13],p[4],w[20]);
  fa_df fa6(w[14],w[15],w[20],p[5],w[21]);
  fa_df fa7(w[16],w[17],w[21],p[6],w[22]);
  ha_df ha8(w[18],w[22],p[7],w[23]);
endmodule
