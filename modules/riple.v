module convolution_tb;


    reg clk;

    reg rst;

    reg [7:0] ip [1:100]; // Input image

    reg [7:0] filter [1:9]; // Filter coefficients

    wire [15:0] A [1:64]; // Output array for filtered values


    integer i;


    // Instantiate the DUT (Device Under Test)

    image_filter uut(

        .clk(clk),

        .rst(rst));

        

    

    // Clock generation

    initial begin

        clk = 0;

        forever #5 clk = ~clk; // 10ns clock period

    end


    // Initialize inputs and apply reset

    initial begin

        // Initialize inputs

        rst = 1;

        #20; // Hold reset for 20ns

        rst = 0;


        // Initialize image data (example: sequential values 1 to 100)

        for (i = 1; i <= 100; i = i + 1) begin

            ip[i] = i;

        end


        // Initialize filter coefficients (example: all ones for averaging filter)

        filter[1] = 1; filter[2] = 1; filter[3] = 1;

        filter[4] = 1; filter[5] = 1; filter[6] = 1;

        filter[7] = 1; filter[8] = 1; filter[9] = 1;


        // Wait for the output computation to complete

        #1000;


        // Display output values

        $display("Filtered Output Values:");

        for (i = 1; i <= 64; i = i + 1) begin

            $display("A[%0d] = %0d", i, A[i]);

        end


        // End simulation

        $stop;

    end


endmodule