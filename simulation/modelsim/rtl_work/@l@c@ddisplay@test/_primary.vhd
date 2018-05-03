library verilog;
use verilog.vl_types.all;
entity LCDdisplayTest is
    port(
        CLK             : in     vl_logic;
        reset_n         : in     vl_logic;
        lcd_enable      : in     vl_logic;
        lcd_bus         : in     vl_logic_vector(9 downto 0);
        busy            : out    vl_logic;
        rs              : out    vl_logic;
        rw              : out    vl_logic;
        e               : out    vl_logic;
        lcd_data        : out    vl_logic_vector(7 downto 0)
    );
end LCDdisplayTest;
