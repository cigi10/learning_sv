# Verilog Basic Syntax

## Module Declaration

-  A module is a basic building block in Verilog
  ```
  module xyz (...);
  ```
# Signals 

- Differentiate between input, output, and reg.

### Input Signals:

  - These are the signals that enter a module.
  - They can be simple single bits or more complex multi-bit vectors.
  - Inputs provide the necessary data or control information that the module needs to perform its functions.

### Output Signals:

  - These are the signals that the module sends out.
  - They also can be single bits or multi-bit vectors and show the results of the module’s processing.
  - Outputs are used to convey the final results or states from the module to other parts of the design.

## Always Block 

- Describes logic that runs on specific events like clock edges or reset signals
- posedge in Verilog refers to the transition of a signal from low (0) to high (1).
- It is used in sequential logic to trigger actions at the rising edge of a clock signal, ensuring consistent data capture and synchronization.
```
always @(posedge clk or posedge reset) begin
    // blah blah blah
end
```
- The block is triggered on the rising edge of clk or reset

## Reset Logic

- Ensure the system starts from a known state
```
  if (reset)
    Q <= 0;
```
- If reset is high, set Q to 0

## Toggle Logic

- Change the output state based on the toggle input
```
else if (T)
    Q <= ~Q;
```
- If T is high, invert the value of Q (0 becomes 1, and 1 becomes 0)

## Non-blocking Assignment -------->  <=

- The <= operator schedules updates to occur at the end of the current time step.
- Used in always @(posedge clk or posedge reset) blocks for clocked logic.
- Allows simultaneous updates to multiple variables, preventing race conditions.
- Essential for modeling synchronous logic like flip-flops and registers.

```
p4 <= 4'b0000; // reset p4 to 0
p4 <= p4 + 1; // increment p4 
```

## Module End

- Marks the end of the module definition
```
endmodule
```


