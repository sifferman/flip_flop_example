
module counter (
    input   logic       clk, rst_n,
    output  logic [1:0] count_o
);

    // create flip-flop
    logic [1:0] count_d, count_q;
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count_q <= 0;
        end else begin
            count_q <= count_d;
        end
    end

    // combinational logic
    assign count_d = count_q+1;
    assign count_o = count_q;

endmodule
