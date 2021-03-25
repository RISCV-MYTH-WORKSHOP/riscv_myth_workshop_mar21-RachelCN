# Introduction to ABI and basic verification flow

In order for an application programme to run on a hardware device, multiple layers of software are required. It can access the operating system via standard libraries and other interfaces. Some hardware resources of of the operating system can be accessed by the application programme via **system calls**. This particular interface is called **Application binary interface** or **System Call interface**.

# RISC V architecture specifications

RISC- V architecture has 32 registers, regardless of whether it is RV32 or RV64.
XLEN defines the width of registers. XLEN is 64 bit for RV64 and 32 bit for RV32.

