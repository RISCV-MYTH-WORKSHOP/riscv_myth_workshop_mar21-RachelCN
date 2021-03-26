# Introduction to ABI and basic verification flow

In order for an application programme to run on a hardware device, multiple layers of software are required. The application program can access the operating system via standard libraries and other interfaces. Some hardware resources of the operating system can be accessed by the application programme via **system calls**. This particular interface is called **Application binary interface** or **System Call interface**.

# RISC V architecture specifications
* RISC- V architecture has 32 registers, regardless of whether it is RV32 or RV64.
* XLEN defines the width of registers. XLEN is 64 bit for RV64 and 32 bit for RV32.

# Why are there only 32 registers, even on RV64?
Consider an example of loading a 64-bit number into a 64-bit register. There are 2 possible ways to do this:
1. Directly load it.
2. Store it in memory and then load it to the register.
   * Each memory address addresses a single byte, i.e last 8 bits or the last byte goes to a particular memory location, the next 8 bits go to the next memory location, and so on.
This addressing system belongs to the **Little Endian addressing system**.

The size of all instructions in RISC-V is 32-bit, for both RV64 and RV32.

Consider the following instructions
 * **ld x8, 16(x23)**
 * **add x8, x24, x8**
 * **sd x8, 8(x23)**

These 3 instructions are a part of the RV64 instruction set.
* **Add** operates only on registers. So it is called **R-type instruction**.
* **ld** operates on immediate and 2 registers. So it is called **I-type instruction**.
* **sd** operates only on source registers and immediate. It is used for storing things. So it is called **S-type instruction**.

All registers that are accessed by R-type, S-type or I-type instructions are 5-bits.

So 5-bits are used to represent registers. 

Total number of registers=2^5 =32 registers.

This is the reason we have 32 registers in RISC-V architecture.

# Lab Work
Lab to rewrite C program using ASM
* To do this, we first write an algorithm to calculate and print the sum of numbers from 1 to n. In our case, n=9.
* We then write a C program to do the same.

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day2/1to9_custom.PNG)

 Next, we create a load.S file.

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day2/load.PNG)

 We then run the following commands and get our output printed.

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day2/final%20output.PNG)

 To view instructions in our programme, we run the following command.

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day2/to%20print%20instructions.PNG)

The instructions for our main programme look like this:

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day2/main%20instructions.PNG)


# Lab to run C- program on RISC-V CPU

We first get RISC- V workshop collaterals and then view the testbench and the code for PICORV32 using Vim.

Downloading files:

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day2/downloading%20workshop%20collaterals.PNG)

Code:

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day2/picorv32.PNG)

Testbench:

![alt text](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-RachelCN/blob/master/Day2/test%20bench.PNG)

