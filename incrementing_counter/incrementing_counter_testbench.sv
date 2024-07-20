module tb_program_counter;

reg clk;
reg reset;
wire [15:0] pc;


program_counter uut (
    .clk(clk),
    .reset(reset),
    .pc(pc)
);

always #5 clk = ~clk; 

initial begin
    clk = 0;
    reset = 0;

    reset = 1;
    #10 reset = 0;

    #100; 


    $finish;
end


initial begin
    $monitor("Time: %0t | PC: %b", $time, pc);
end

endmodule
