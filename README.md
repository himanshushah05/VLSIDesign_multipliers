# VLSIdesign_multipliers #
<h1 align="center"> Different Multiplier Archetectures </h1>

## Getting started 👇
- pull any design file you like to execute and also pull the respective testbench file 
- These designs can be simulated using any of the following tools or softwares:
  -   [EDA tool](https://www.edaplayground.com/) - This is an online tool
  -   [Vivado Xilinx](https://www.xilinx.com/developer/products/vivado.html)
  -   [Intel Modelsim](https://www.intel.com/content/www/us/en/software-kit/750666/modelsim-intel-fpgas-standard-edition-software-version-20-1-1.html)
## Understanding different types of multipliers 📜
1. Carray Save Array Multiplier : <code>csa_4bit.v</code>
  - This architecture supports unsigned numbers only.
  - In this type of architecture, the carry is passed to the next column and next row. 
  - This helps in reducing the delay of the circuit.

2. 4-Bit Bough-Wooley Array Multiplier Design : <code>sma_signed.v</code>
  - This architecture supports signed numbers also.
  - It is a signed multiplier which follows 2’s compliment arithmetic.

3. Wallace-Tree Multiplier : <code>wallace_4bit.v</code>
  - This architecture supports unsigned numbers only.
  - In this type of architecture, we try to perform the partial products as quickly as possible.
  - This architecture is more suitable and time saving for n>8, where n is number of bits.
  - In this architecture, the number of half-adders and full-adders is more.
4. Dadda-Tree multiplier : <code>dadda_mul_4bit.v</code>
  - This architecture supports unsigned numbers only
  - In this type of architecture, we perform the partial product as late as possible.
  - This architecture has lesser number of half-adders and full-adders.
  - This architecture has longest path in the final adder
 
 If compared to Wallace tree multiplier, Dadda tree multiplier has an advantage of lesser area but a disadvantage of more delay time.

5. Squarer circuit : <code>square_4bit.v</code>
  - We think, squarer circuit is same as multiplier, but it is not, squarer circuit is much more simplified and fast (in terms of delay)
  -  Such squarer circuits are used in almost every DSP algorithm. 






