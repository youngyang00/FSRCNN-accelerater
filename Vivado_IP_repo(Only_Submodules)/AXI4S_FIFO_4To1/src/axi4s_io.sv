`ifndef AXI4S_INTERFACE
`define AXI4S_INTERFACE
interface axi4s_io(input bit clock);
   // ----------------------------------------------------------------
   // 1) 신호 선언부 (기존과 동일)
   // ----------------------------------------------------------------
   logic                i_rstn;
   logic [31:0]         s_axis_tdata;
   logic                s_axis_tvalid;
   logic                s_axis_tready;
   logic [23:0]         m_axis_tdata;
   logic                m_axis_tvalid;
   logic                m_axis_tready;
   logic                eol;
   logic                eof;

   // ----------------------------------------------------------------
   // 2) 기존 cb clocking block — 나머지 신호들은 여기서 처리
   // ----------------------------------------------------------------
   clocking cb @(posedge clock);
      default input  #2ns  output #2ns;
      output i_rstn;
      output s_axis_tdata;
      input  s_axis_tready;
      input  m_axis_tdata;
      input  m_axis_tvalid;
      input  eol;
      input  eof;
   endclocking

   // ----------------------------------------------------------------
   // 3) m_axis_tready 전용 드라이브용 clocking block
   // ----------------------------------------------------------------
   clocking signal_drv @(posedge clock);
      default input  #2ns  output #2ns;
      // testbench → DUT 로 드라이브
      output m_axis_tready;
      output s_axis_tvalid;
   endclocking

   // ----------------------------------------------------------------
   // 4) m_axis_tready 전용 샘플링용 clocking block
   // ----------------------------------------------------------------
   clocking signal_smp @(posedge clock);
      default input  #2ns  output #2ns;
      // DUT → testbench 로 읽기
      input m_axis_tready;
      input s_axis_tvalid;
   endclocking

   // ----------------------------------------------------------------
   // 5) modport TB 에 세 clocking block 모두 노출
   // ----------------------------------------------------------------
   modport TB (
      clocking cb,
      clocking signal_drv,
      clocking signal_smp
   );
endinterface
`endif
