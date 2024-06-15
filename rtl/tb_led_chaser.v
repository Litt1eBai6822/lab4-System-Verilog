module tb_led_chaser;
    logic clk;
    logic rst;
    logic [7:0] leds;

    led_chaser uut (
        .clk(clk),
        .rst(rst),
        .leds(leds)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1;
        #10;
        rst = 0;
        #100;
        $stop;
    end
endmodule