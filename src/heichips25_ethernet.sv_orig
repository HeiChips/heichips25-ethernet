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
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n,    // reset_n - low to reset
    output wire       ethernet_dp,
    output wire       ethernet_dn
);

    // List all unused inputs to prevent warnings
    wire _unused = &{ui_in[7:1], uio_in[7:0]};

    assign uio_out[7:6] = '0;
    assign uio_out[0] = '0;
    assign uio_oe[7:0] = '0;
    assign uo_out[7:0] = '0;

    wire in_p;
    wire in_n;

    phy phy_0 (
        .clk(clk),            // System clock
        .rst_n(rst_n),        // Reset signal
        .ref_clk(ui_in[0]),   // Ref clock connected to the 0th bit of uio_in
        .tx_en(ui_in[1]),     // Transmit enable connected to ena
        .txd(ui_in[3:2]),     // Transmit data connected to lower 2 bits of uio_in
        .rx_dv(uio_out[1]),   // Receive data valid from PHY
        .rxd(uio_out[3:2]),   // Receive data from PHY
        .mdc(clk),            // MDC driven by the system clock (can be changed if needed)
        .mdio_i(ui_in[4]),    // MDIO input (simplified for this design)
        .mdio_o(uio_out[4]),  // MDIO output
        .mdio_oe(uio_out[5]), // MDIO output enable
        .tx_p(in_p),          // Ethernet positive data (output to PHY)
        .tx_n(in_n)           // Ethernet negative data (output to PHY)
    );


    line_driver line_driver_0 (
      .in_p (in_p),
      .in_n (in_n),
      .ethernet_dp (ethernet_dp),
      .ethernet_dn (ethernet_dn)
    );

endmodule
