
a.out: counter_tb.sv counter.sv
	iverilog -g2012 -o $@ $^

dump.vcd: a.out
	./a.out

clean:
	rm -rf a.out dump.vcd
