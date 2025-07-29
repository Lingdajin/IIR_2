//
// IIR.v
//
// 二阶IIR数字滤波器
// 公式: y[n] = a0*x[n] + a1*x[n-1] + a2*x[n-2] - b1*y[n-1] - b2*y[n-2]
//

module IIR (
    /* synthesis syn_force_pads = 1 */
    input               clk,
    /* synthesis syn_force_pads = 1 */
    input               rst_n,
    input               [7:0] adc,       // 8位有符号输入

    output              [7:0] dac ,       // 8位有符号输出
    output              adc_clk,
    output              dac_clk
);

reg [7:0] clk_divide_counter;
reg clk_1M_reg;
wire clk_1M;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        clk_1M_reg <= 1'b0; // 复位1MHz时钟
        clk_divide_counter <= 8'd0; // 复位分频计数
    end
    else begin
        if(clk_divide_counter == 8'd11) begin // 12MHz / 12 = 1MHz
            clk_1M_reg <= ~clk_1M_reg; // 翻转1MHz时钟
            clk_divide_counter <= 8'd0; // 重置计数器
        end
        else begin
            clk_divide_counter <= clk_divide_counter + 1'b1; // 增加计数器
        end
    end
end
assign clk_1M = clk_1M_reg; // 输出1MHz时钟信号

assign adc_clk = clk_1M_reg; // ADC和DAC使用同一时钟
assign dac_clk = clk_1M_reg; // ADC和DAC使用同一时钟

//----------------------------------------------------------------
// 滤波器系数 (Q4.12 格式: 1位符号, 3位整数, 12位小数)
//----------------------------------------------------------------
// 为了实现一个简单的低通滤波器，我们设置以下系数:
// a0 = 0.0675, a1 = 0.1349, a2 = 0.0675
// b1 = -1.1430, b2 = 0.4128
//
// 转换为Q4.12定点数 (乘以 2^12 = 4096)
localparam signed [15:0] A0 = 16'sd276;    // 0.067455 * 4096
localparam signed [15:0] A1 = 16'sd553;    // 0.134911 * 4096
localparam signed [15:0] A2 = 16'sd276;    // 0.067455 * 4096
localparam signed [15:0] B1 = -16'sd4682;  // -1.14298 * 4096
localparam signed [15:0] B2 = 16'sd1691;   // 0.412802 * 4096

//----------------------------------------------------------------
// 内部信号和寄存器
//----------------------------------------------------------------
// 历史输入值
reg signed [8:0] x_d1, x_d2;
// 历史输出值
reg signed [8:0] y_d1, y_d2;

// 存储乘法和加法结果的中间变量，需要更宽的位宽以防溢出
wire signed [31:0] term_a0, term_a1, term_a2;
wire signed [31:0] term_b1, term_b2;
wire signed [31:0] y_full;

//----------------------------------------------------------------
// IIR 滤波器逻辑
//----------------------------------------------------------------
// 5个乘法器
assign term_a0 = A0 * x;
assign term_a1 = A1 * x_d1;
assign term_a2 = A2 * x_d2;
assign term_b1 = B1 * y_d1;
assign term_b2 = B2 * y_d2;

// 加法/减法
// y_full = a0*x + a1*x_d1 + a2*x_d2 - b1*y_d1 - b2*y_d2
assign y_full = term_a0 + term_a1 + term_a2 - term_b1 - term_b2;

wire signed [8:0] y;
wire signed [8:0] x;
// 输出y是y_full定点数的小数部分对齐并截断后的结果
// 右移32位以匹配Q4.12格式，然后取高8位
assign x = {1'b0,adc}; // 输入信号直接连接到adc输入
assign y = {y_full >>> 12};

assign dac = y[7:0]; // 输出信号直接连接到dac输出

// 时序逻辑: 在时钟上升沿更新历史数据
always @(posedge clk_1M or negedge rst_n) begin
    if (!rst_n) begin
        // 复位
        x_d1 <= 8'd0;
        x_d2 <= 8'd0;
        y_d1 <= 8'd0;
        y_d2 <= 8'd0;
    end else begin
        // 更新历史值
        x_d1 <= x;
        x_d2 <= x_d1;
        y_d1 <= y;
        y_d2 <= y_d1;
    end
end

endmodule
