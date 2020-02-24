wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/u105/u105061255/yuanta/payload/test_payload_generator.fsdb}
wvResizeWindow -win $_nWave1 203 131 884 430
wvResizeWindow -win $_nWave1 0 23 1462 841
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test_top"
wvSetPosition -win $_nWave1 {("G1" 58)}
wvSetPosition -win $_nWave1 {("G1" 58)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top/top_payload_generator0/payload0/ExecType\[7:0\]} \
{/test_top/top_payload_generator0/payload0/MessageType\[7:0\]} \
{/test_top/top_payload_generator0/payload0/MsgSeqNum\[31:0\]} \
{/test_top/top_payload_generator0/payload0/OrdType\[7:0\]} \
{/test_top/top_payload_generator0/payload0/PositionEffect\[7:0\]} \
{/test_top/top_payload_generator0/payload0/TimeInForce\[7:0\]} \
{/test_top/top_payload_generator0/payload0/checksum\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp0\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp1\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp2\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp3\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp4\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp5\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp6\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp7\[15:0\]} \
{/test_top/top_payload_generator0/payload0/clk} \
{/test_top/top_payload_generator0/payload0/cm_id\[15:0\]} \
{/test_top/top_payload_generator0/payload0/cnt\[2:0\]} \
{/test_top/top_payload_generator0/payload0/content\[639:0\]} \
{/test_top/top_payload_generator0/payload0/data\[255:0\]} \
{/test_top/top_payload_generator0/payload0/enable} \
{/test_top/top_payload_generator0/payload0/epoch_s\[31:0\]} \
{/test_top/top_payload_generator0/payload0/fcm_id\[15:0\]} \
{/test_top/top_payload_generator0/payload0/hdr_fcm_id\[15:0\]} \
{/test_top/top_payload_generator0/payload0/info_source0\[7:0\]} \
{/test_top/top_payload_generator0/payload0/info_source1\[7:0\]} \
{/test_top/top_payload_generator0/payload0/info_source2\[7:0\]} \
{/test_top/top_payload_generator0/payload0/investor_acno\[31:0\]} \
{/test_top/top_payload_generator0/payload0/investor_flag\[7:0\]} \
{/test_top/top_payload_generator0/payload0/ms\[15:0\]} \
{/test_top/top_payload_generator0/payload0/msg_length\[15:0\]} \
{/test_top/top_payload_generator0/payload0/ord_id\[31:0\]} \
{/test_top/top_payload_generator0/payload0/order_no0\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_no1\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_no2\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_no3\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_no4\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_source\[7:0\]} \
{/test_top/top_payload_generator0/payload0/price\[31:0\]} \
{/test_top/top_payload_generator0/payload0/qty\[15:0\]} \
{/test_top/top_payload_generator0/payload0/resetn} \
{/test_top/top_payload_generator0/payload0/session_id\[15:0\]} \
{/test_top/top_payload_generator0/payload0/side\[7:0\]} \
{/test_top/top_payload_generator0/payload0/sym\[159:0\]} \
{/test_top/top_payload_generator0/payload0/symbol_type\[7:0\]} \
{/test_top/top_payload_generator0/payload0/tkeep\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tlast} \
{/test_top/top_payload_generator0/payload0/tready} \
{/test_top/top_payload_generator0/payload0/tstrb\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tvalid} \
{/test_top/top_payload_generator0/payload0/user_define0\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define1\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define2\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define3\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define4\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define5\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define6\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define7\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 )} 
wvSetPosition -win $_nWave1 {("G1" 58)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 6
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 3
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSelectSignal -win $_nWave1 {( "G1" 15 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 8 )} 
wvSelectSignal -win $_nWave1 {( "G1" 9 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvScrollDown -win $_nWave1 4
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvExpandBus -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 74)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvCollapseBus -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 58)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvScrollUp -win $_nWave1 7
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 2
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 5
wvScrollUp -win $_nWave1 8
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 5 )} 
wvSelectSignal -win $_nWave1 {( "G1" 6 )} 
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvCloseFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvTpfCloseForm -win $_nWave1
wvGetSignalClose -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/u105/u105061255/yuanta/payload/test_payload_generator2.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test_top"
wvSetPosition -win $_nWave1 {("G1" 58)}
wvSetPosition -win $_nWave1 {("G1" 58)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top/top_payload_generator0/payload0/ExecType\[7:0\]} \
{/test_top/top_payload_generator0/payload0/MessageType\[7:0\]} \
{/test_top/top_payload_generator0/payload0/MsgSeqNum\[31:0\]} \
{/test_top/top_payload_generator0/payload0/OrdType\[7:0\]} \
{/test_top/top_payload_generator0/payload0/PositionEffect\[7:0\]} \
{/test_top/top_payload_generator0/payload0/TimeInForce\[7:0\]} \
{/test_top/top_payload_generator0/payload0/checksum\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp0\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp1\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp2\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp3\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp4\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp5\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp6\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp7\[15:0\]} \
{/test_top/top_payload_generator0/payload0/clk} \
{/test_top/top_payload_generator0/payload0/cm_id\[15:0\]} \
{/test_top/top_payload_generator0/payload0/cnt\[2:0\]} \
{/test_top/top_payload_generator0/payload0/content\[639:0\]} \
{/test_top/top_payload_generator0/payload0/data\[255:0\]} \
{/test_top/top_payload_generator0/payload0/enable} \
{/test_top/top_payload_generator0/payload0/epoch_s\[31:0\]} \
{/test_top/top_payload_generator0/payload0/fcm_id\[15:0\]} \
{/test_top/top_payload_generator0/payload0/hdr_fcm_id\[15:0\]} \
{/test_top/top_payload_generator0/payload0/info_source0\[7:0\]} \
{/test_top/top_payload_generator0/payload0/info_source1\[7:0\]} \
{/test_top/top_payload_generator0/payload0/info_source2\[7:0\]} \
{/test_top/top_payload_generator0/payload0/investor_acno\[31:0\]} \
{/test_top/top_payload_generator0/payload0/investor_flag\[7:0\]} \
{/test_top/top_payload_generator0/payload0/ms\[15:0\]} \
{/test_top/top_payload_generator0/payload0/msg_length\[15:0\]} \
{/test_top/top_payload_generator0/payload0/ord_id\[31:0\]} \
{/test_top/top_payload_generator0/payload0/order_no0\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_no1\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_no2\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_no3\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_no4\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_source\[7:0\]} \
{/test_top/top_payload_generator0/payload0/price\[31:0\]} \
{/test_top/top_payload_generator0/payload0/qty\[15:0\]} \
{/test_top/top_payload_generator0/payload0/resetn} \
{/test_top/top_payload_generator0/payload0/session_id\[15:0\]} \
{/test_top/top_payload_generator0/payload0/side\[7:0\]} \
{/test_top/top_payload_generator0/payload0/sym\[159:0\]} \
{/test_top/top_payload_generator0/payload0/symbol_type\[7:0\]} \
{/test_top/top_payload_generator0/payload0/tkeep\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tlast} \
{/test_top/top_payload_generator0/payload0/tready} \
{/test_top/top_payload_generator0/payload0/tstrb\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tvalid} \
{/test_top/top_payload_generator0/payload0/user_define0\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define1\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define2\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define3\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define4\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define5\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define6\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define7\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 )} 
wvSetPosition -win $_nWave1 {("G1" 58)}
wvSetPosition -win $_nWave1 {("G1" 58)}
wvSetPosition -win $_nWave1 {("G1" 58)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top/top_payload_generator0/payload0/ExecType\[7:0\]} \
{/test_top/top_payload_generator0/payload0/MessageType\[7:0\]} \
{/test_top/top_payload_generator0/payload0/MsgSeqNum\[31:0\]} \
{/test_top/top_payload_generator0/payload0/OrdType\[7:0\]} \
{/test_top/top_payload_generator0/payload0/PositionEffect\[7:0\]} \
{/test_top/top_payload_generator0/payload0/TimeInForce\[7:0\]} \
{/test_top/top_payload_generator0/payload0/checksum\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp0\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp1\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp2\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp3\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp4\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp5\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp6\[15:0\]} \
{/test_top/top_payload_generator0/payload0/checksum_temp7\[15:0\]} \
{/test_top/top_payload_generator0/payload0/clk} \
{/test_top/top_payload_generator0/payload0/cm_id\[15:0\]} \
{/test_top/top_payload_generator0/payload0/cnt\[2:0\]} \
{/test_top/top_payload_generator0/payload0/content\[639:0\]} \
{/test_top/top_payload_generator0/payload0/data\[255:0\]} \
{/test_top/top_payload_generator0/payload0/enable} \
{/test_top/top_payload_generator0/payload0/epoch_s\[31:0\]} \
{/test_top/top_payload_generator0/payload0/fcm_id\[15:0\]} \
{/test_top/top_payload_generator0/payload0/hdr_fcm_id\[15:0\]} \
{/test_top/top_payload_generator0/payload0/info_source0\[7:0\]} \
{/test_top/top_payload_generator0/payload0/info_source1\[7:0\]} \
{/test_top/top_payload_generator0/payload0/info_source2\[7:0\]} \
{/test_top/top_payload_generator0/payload0/investor_acno\[31:0\]} \
{/test_top/top_payload_generator0/payload0/investor_flag\[7:0\]} \
{/test_top/top_payload_generator0/payload0/ms\[15:0\]} \
{/test_top/top_payload_generator0/payload0/msg_length\[15:0\]} \
{/test_top/top_payload_generator0/payload0/ord_id\[31:0\]} \
{/test_top/top_payload_generator0/payload0/order_no0\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_no1\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_no2\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_no3\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_no4\[7:0\]} \
{/test_top/top_payload_generator0/payload0/order_source\[7:0\]} \
{/test_top/top_payload_generator0/payload0/price\[31:0\]} \
{/test_top/top_payload_generator0/payload0/qty\[15:0\]} \
{/test_top/top_payload_generator0/payload0/resetn} \
{/test_top/top_payload_generator0/payload0/session_id\[15:0\]} \
{/test_top/top_payload_generator0/payload0/side\[7:0\]} \
{/test_top/top_payload_generator0/payload0/sym\[159:0\]} \
{/test_top/top_payload_generator0/payload0/symbol_type\[7:0\]} \
{/test_top/top_payload_generator0/payload0/tkeep\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tlast} \
{/test_top/top_payload_generator0/payload0/tready} \
{/test_top/top_payload_generator0/payload0/tstrb\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tvalid} \
{/test_top/top_payload_generator0/payload0/user_define0\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define1\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define2\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define3\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define4\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define5\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define6\[7:0\]} \
{/test_top/top_payload_generator0/payload0/user_define7\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 )} 
wvSetPosition -win $_nWave1 {("G1" 58)}
wvGetSignalClose -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvScrollUp -win $_nWave1 5
wvSetCursor -win $_nWave1 8.253833 -snap {("G1" 40)}
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvScrollUp -win $_nWave1 5
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvExpandBus -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 66)}
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetPosition -win $_nWave1 {("G1" 28)}
wvExpandBus -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 98)}
wvScrollDown -win $_nWave1 5
wvSelectSignal -win $_nWave1 {( "G1" 7 )} 
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 10 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvExpandBus -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 114)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvCollapseBus -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 98)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetPosition -win $_nWave1 {("G1" 28)}
wvCollapseBus -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 66)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSetPosition -win $_nWave1 {("G1" 29)}
wvCollapseBus -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 29)}
wvSetPosition -win $_nWave1 {("G1" 58)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 9
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 4
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetCursor -win $_nWave1 132.142649 -snap {("G1" 20)}
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvScrollUp -win $_nWave1 8
wvSelectSignal -win $_nWave1 {( "G1" 23 )} 
wvSelectSignal -win $_nWave1 {( "G1" 24 )} 
wvScrollDown -win $_nWave1 2
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvSelectAll -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvSelectSignal -win $_nWave1 {( "G1" 31 )} 
wvScrollDown -win $_nWave1 4
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvSelectSignal -win $_nWave1 {( "G1" 39 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 41 )} 
wvSelectSignal -win $_nWave1 {( "G1" 42 )} 
wvScrollDown -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G1" 43 )} 
wvScrollDown -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G1" 44 )} 
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 46 )} 
wvSelectSignal -win $_nWave1 {( "G1" 47 )} 
wvSelectSignal -win $_nWave1 {( "G1" 48 )} 
wvSelectSignal -win $_nWave1 {( "G1" 49 )} 
wvScrollDown -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 58 )} 
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 25
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 25 26 27 28 29 30 31 32 33 34 35 36 37 38 \
           39 40 41 42 43 )} 
wvSelectSignal -win $_nWave1 {( "G1" 50 )} 
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvScrollUp -win $_nWave1 1
wvSelectAll -win $_nWave1
wvSelectAll -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 0)}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top/top_payload_generator0/payload0/clk} \
{/test_top/top_payload_generator0/payload0/data\[255:0\]} \
{/test_top/top_payload_generator0/payload0/tkeep\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tlast} \
{/test_top/top_payload_generator0/payload0/tready} \
{/test_top/top_payload_generator0/payload0/tstrb\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tvalid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvSetPosition -win $_nWave1 {("G1" 7)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top/top_payload_generator0/payload0/clk} \
{/test_top/top_payload_generator0/payload0/data\[255:0\]} \
{/test_top/top_payload_generator0/payload0/tkeep\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tlast} \
{/test_top/top_payload_generator0/payload0/tready} \
{/test_top/top_payload_generator0/payload0/tstrb\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tvalid} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave1 {("G1" 7)}
wvGetSignalClose -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 134.759335 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 140.999125 -snap {("G1" 1)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test_top"
wvGetSignalSetScope -win $_nWave1 "/test_top/top_payload_generator0"
wvGetSignalSetScope -win $_nWave1 "/test_top/top_payload_generator0/payload0"
wvGetSignalSetScope -win $_nWave1 "/test_top/top_payload_generator0/payload0"
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top/top_payload_generator0/payload0/clk} \
{/test_top/top_payload_generator0/payload0/data\[255:0\]} \
{/test_top/top_payload_generator0/payload0/tkeep\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tlast} \
{/test_top/top_payload_generator0/payload0/tready} \
{/test_top/top_payload_generator0/payload0/tstrb\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tvalid} \
{/test_top/top_payload_generator0/payload0/cnt\[2:0\]} \
{/test_top/top_payload_generator0/payload0/info_source0\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test_top/top_payload_generator0/payload0/clk} \
{/test_top/top_payload_generator0/payload0/data\[255:0\]} \
{/test_top/top_payload_generator0/payload0/tkeep\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tlast} \
{/test_top/top_payload_generator0/payload0/tready} \
{/test_top/top_payload_generator0/payload0/tstrb\[31:0\]} \
{/test_top/top_payload_generator0/payload0/tvalid} \
{/test_top/top_payload_generator0/payload0/cnt\[2:0\]} \
{/test_top/top_payload_generator0/payload0/info_source0\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 8 9 )} 
wvSetPosition -win $_nWave1 {("G1" 9)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 131.326479 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 139.579105 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 251.431330 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 236.335064 -snap {("G1" 8)}
wvSetCursor -win $_nWave1 233.114527 -snap {("G1" 8)}
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvExpandBus -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 265)}
wvSelectSignal -win $_nWave1 {( "G1" 226 )} 
wvScrollUp -win $_nWave1 224
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSetPosition -win $_nWave1 {("G1" 2)}
wvCollapseBus -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 2)}
wvSetPosition -win $_nWave1 {("G1" 9)}
wvResizeWindow -win $_nWave1 0 23 1462 841
wvResizeWindow -win $_nWave1 0 23 1462 841
wvResizeWindow -win $_nWave1 0 23 1462 841
wvSetCursor -win $_nWave1 116.686796 -snap {("G2" 0)}
wvExit
