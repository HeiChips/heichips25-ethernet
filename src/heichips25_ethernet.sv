// SPDX-FileCopyrightText: © 2025 XXX Authors
// SPDX-License-Identifier: Apache-2.0

// Adapted from the Tiny Tapeout template

//`include "../macro_analog/line_driver.v"

`default_nettype none

module heichips25_ethernet (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n,    // reset_n - low to reset
    output wire       ethernet_dp,
    output wire       ethernet_dn
);

    // List all unused inputs to prevent warnings
    wire _unused = &{ena, ui_in[7:1], uio_in[7:0]};

    logic [7:0] count;

    always_ff @(posedge clk) begin
        if (!rst_n) begin
            count <= '0;
        end else begin
            if (ui_in[0]) begin
                count <= count + 1;
            end
        end
    end
    
    assign uo_out  = count;
    assign uio_out = count;
    assign uio_oe  = '1;


    // wire data_in_tst;
    // assign data_in_tst  = '1;
    // wire ehternet_dp_tst;
    // wire ehternet_dn_tst;

    // line_driver line_driver_i(
    //     .data_in(data_in_tst),
    //     .ethernet_dp(ehternet_dp_tst),
    //     .ethernet_dn(ehternet_dn_tst)
    // );


    logic [7:0] count_o;
    logic counter_0_ovf;

    counter_8bit counter_0 (
	    .clk_i      (clk),
	    .rst_ni     (rst_n),
	    .en_i       (ena),
	    
        .count_o    (count_o[7:0]),
        .ovf_o      (counter_0_ovf)
    );


    assign ethernet_dp  = '1;
    assign ethernet_dn  = '0;

endmodule
