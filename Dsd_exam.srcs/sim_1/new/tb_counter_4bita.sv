module tb_counter_4bita;
    logic clk;
    logic reset_n;
    logic load;
    logic [3:0] count;
    logic [3:0] load_data;

    counter_4bita dut (.clk(clk), .reset_n(reset_n), .load(load), .load_data(load_data), .count(count));

    always #5 clk = ~clk;

    initial begin
        clk = 0;         
        reset_n = 1;     
        load = 0;
        load_data = 4'b0110;
        #10; 
        reset_n = 0; 
        #10;
        reset_n = 1; 
        
        
        load = 1;
        load_data = 4'b0011;
        #10; 
        load =0 ;
        #10;



        #100;
        $finish ;
    end

    
endmodule

