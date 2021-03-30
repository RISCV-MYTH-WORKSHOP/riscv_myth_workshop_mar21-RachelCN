# Digital logic with TL Verilog in Makerchip IDE

The first step to learning about digital logic is learning about logic gates. Logic gate circuits can be implemented in Makerchip as follows.

__1. NOT Gate__ 
  
  ![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/combinational%20logic%20-%20NOT.PNG)
  
__2. AND Gate__ 
  
  ![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/combinational%20logic-%20AND.PNG)
  
__3. OR Gate__
  
  ![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/combinational%20logic-%20OR.PNG)
  
__4. NOR Gate__
  
  ![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/combinational%20logic-%20NOR.PNG)
  
__5. NAND Gate__
  
  ![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/combinational%20logic%20-%20NAND.PNG)
  
__6. XOR Gate__
  
  ![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/combinational%20logic%20-%20XOR.PNG)
  
__7. XNOR Gate__
  
  ![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/combinational%20logic%20-%20XNOR.PNG)
  
  
* Arithmetic operators act on vectors as binary numbers. This can be visualized here.

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/vectors.PNG)

* A multiplexer is implemented as follows:

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/MUX%201.PNG)

Implementation of Multiplexer using vectors:

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/MUX%20using%20vectors.PNG)

A combinational calculator can be implemented using the logic we used while creating a multiplexer. Ternary operators are used.

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/combinational%20calc%201.PNG)

We say a circuit follows sequential logic when it is sequenced by a clock signal. Flip-flops allow values to propagate. The whole circuit can be viewed as a big state machine.

Fibonacci series can be implemented as follows using sequential logic.

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/sequential%20logic%20-%20fibonacci%20series.PNG)

The calculator that we implemented earlier using combinational logic can be implemented as follows using sequential logic:
![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/sequential%20calculator.PNG)

# Implementing pipelines
![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/fibonacci%20series%20with%20pipeline.PNG)

Counter and calculator in pipeline :

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/counter%20and%20calculator%20in%20pipeline.PNG)

A 2- cycle calculator can be implemented as follows.

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day3/2-cycle%20calculator.PNG)


# Building a RISC-V core

* step 1: Next pc logic

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day4/next%20pc.PNG)

* step 2: Fetch logic

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day4/fetch%20logic.PNG)

* step 3: Instruction types decode

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day4/instruction%20types%20decode.PNG)

* step 4: Instruction immediate decode

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day4/instruction%20immediate%20decode.PNG)

* step 5: instruction decode and instruction field decode

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day4/instruction%20decode.PNG)

* step 6: decoding instructions - specific

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day4/instruction%20decode%202.PNG)

* step 7: Register file read

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day4/register%20file%20read.PNG)

* step 8: ALU

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day4/ALU.PNG)

* step 9: Register file write

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day4/register%20file%20write.PNG)

* step 10: Branch instructions, branch target and updating PC

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day4/branch%20instructions%2C%20target%2C%20pc_update.PNG)

* step 11: Testbench

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day4/testbench.PNG)

With this, we've completed building our basic RISC-V CPU. This is how it looks.

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day4/Final%20cpu%20without%20pipelining.PNG)

Now, we've got to pipeline our CPU. 

After pipelining it, this is how it looks.

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day3_5/screenshots/day5/Pipelined%20RISC-V%20CPU.PNG)

Hence, we've designed and created our very own RISC-V based pipelined CPU using Makerchip IDE.









