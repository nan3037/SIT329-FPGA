// create module
module blink1(
input wire clk, // 50MHz input clock
output wire [7:0] LED // array of 8 LEDs
);

// create a binary counter
reg [31:0] cnt; //32 bit counter

initial begin

cnt <= 32'h00000000; // start count at zero

end

always @(posedge clk) begin

cnt <= cnt+1; // count up

end


//assign LEDs to bits 28 through 21 of the counter

assign LED = cnt[24];

endmodule