VERILOG = iverilog
TARGET = simple.vcd
TEMP = temp.vvp
$(TARGET) : $(TEMP)
	vvp $(TEMP)
$(TEMP): prpg.v testbench.v
	$(VERILOG) -o $(TEMP) prpg.v testbench.v
clean:
	-del $(TARGET)
	-del $(TEMP)