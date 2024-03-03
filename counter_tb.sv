
module counter_tb;

    logic       clk, rst_n;
    logic [1:0] count_o;

    counter counter (.*);

    initial begin
        clk = 0;
        forever begin
            #1;
            clk = !clk;
        end
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars;

        rst_n = 0;
        @(negedge clk);
        rst_n = 1;

        repeat (20) @(negedge clk);
        $finish;
    end

endmodule
