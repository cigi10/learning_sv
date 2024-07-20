module program_counter (
    input wire clk,      
    input wire reset,    
    output reg [15:0] pc 
);


always @(posedge clk or posedge reset) begin
    if (reset)
        pc <= 16'b0; 
    else
        pc <= pc + 1;
end

endmodule
