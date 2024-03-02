
module counter_tb;

    logic       clk;
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
        counter.count_q = 0;
        repeat (20) @(negedge clk);
        $finish;
    end

endmodule
