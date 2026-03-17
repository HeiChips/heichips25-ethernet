// SPDX-FileCopyrightText: © 2025 XXX Authors
// SPDX-License-Identifier: Apache-2.0

// Adapted from the Tiny Tapeout template

`include "line_driver.v"
`default_nettype none

module heichips25_ethernet (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered
    input  wire       clk,      // clock
    input  wire       rst_n,    // reset_n - low to reset
    output wire       ethernet_dp,
    output wire       ethernet_dn
);

    // Mark unused inputs to avoid warnings
    wire _unused = &{ui_in[7:1], uio_in[7:0], ena, clk, rst_n};

    // Drive outputs to zero
    assign uio_out[7:0] = 8'b0;
    assign uio_oe[7:0]  = 8'b0;
    assign uo_out[7:0]  = 8'b0;

    // Drive in_p/in_n depending on ui_in[0]
    wire in_p = ui_in[0];      // direct input
    wire in_n = ~ui_in[0];     // inverted input

    // Connect to your placeholder analog macro
    line_driver line_driver_0 (
        .in_p(in_p),
        .in_n(in_n),
        .ethernet_dp(ethernet_dp),
        .ethernet_dn(ethernet_dn)
    );

endmodule