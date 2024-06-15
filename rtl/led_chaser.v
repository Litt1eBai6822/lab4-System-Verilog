module led_chaser(
    input logic clk,
    input logic rst,
    output logic [7:0] leds
);

always_ff @(posedge clk or posedge rst) begin
    if (rst) begin
        leds <= 8'b00000001;
    end else begin
        leds <= {leds[6:0], leds[7]};
    end
end

endmodule
