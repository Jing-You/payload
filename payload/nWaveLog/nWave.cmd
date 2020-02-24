wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/u105/u105061255/yuanta/payload/test_payload_generator.fsdb}
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
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 38 )} 
wvScrollUp -win $_nWave1 12
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetPosition -win $_nWave1 {("G1" 28)}
wvExpandBus -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 90)}
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetPosition -win $_nWave1 {("G1" 28)}
wvCollapseBus -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 58)}
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvScrollUp -win $_nWave1 6
wvResizeWindow -win $_nWave1 0 23 1462 841
wvScrollUp -win $_nWave1 3
wvScrollUp -win $_nWave1 2
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test_top/top_payload_generator0"
wvGetSignalClose -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test_top"
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 2
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvUnknownSaveResult -win $_nWave1 -clear
wvSelectGroup -win $_nWave1 {G1}
wvGetSignalOpen -win $_nWave1
wvSetPosition -win $_nWave1 {("G2" 58)}
wvSetPosition -win $_nWave1 {("G2" 58)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test_payload_generator/top_payload_generator0/payload0/ExecType\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/MessageType\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/MsgSeqNum\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/OrdType\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/PositionEffect\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/TimeInForce\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp0\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp1\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp2\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp3\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp4\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp5\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp6\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp7\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/clk} \
{/test_payload_generator/top_payload_generator0/payload0/cm_id\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/cnt\[2:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/content\[639:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/data\[255:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/enable} \
{/test_payload_generator/top_payload_generator0/payload0/epoch_s\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/fcm_id\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/hdr_fcm_id\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/info_source0\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/info_source1\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/info_source2\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/investor_acno\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/investor_flag\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/ms\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/msg_length\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/ord_id\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/order_no0\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/order_no1\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/order_no2\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/order_no3\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/order_no4\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/order_source\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/price\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/qty\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/resetn} \
{/test_payload_generator/top_payload_generator0/payload0/session_id\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/side\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/sym\[159:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/symbol_type\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/tkeep\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/tlast} \
{/test_payload_generator/top_payload_generator0/payload0/tready} \
{/test_payload_generator/top_payload_generator0/payload0/tstrb\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/tvalid} \
{/test_payload_generator/top_payload_generator0/payload0/user_define0\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define1\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define2\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define3\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define4\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define5\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define6\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define7\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 )} 
wvSetPosition -win $_nWave1 {("G2" 58)}
wvSetPosition -win $_nWave1 {("G2" 58)}
wvSetPosition -win $_nWave1 {("G2" 58)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
}
wvAddSignal -win $_nWave1 -group {"G2" \
{/test_payload_generator/top_payload_generator0/payload0/ExecType\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/MessageType\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/MsgSeqNum\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/OrdType\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/PositionEffect\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/TimeInForce\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp0\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp1\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp2\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp3\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp4\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp5\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp6\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/checksum_temp7\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/clk} \
{/test_payload_generator/top_payload_generator0/payload0/cm_id\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/cnt\[2:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/content\[639:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/data\[255:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/enable} \
{/test_payload_generator/top_payload_generator0/payload0/epoch_s\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/fcm_id\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/hdr_fcm_id\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/info_source0\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/info_source1\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/info_source2\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/investor_acno\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/investor_flag\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/ms\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/msg_length\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/ord_id\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/order_no0\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/order_no1\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/order_no2\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/order_no3\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/order_no4\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/order_source\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/price\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/qty\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/resetn} \
{/test_payload_generator/top_payload_generator0/payload0/session_id\[15:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/side\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/sym\[159:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/symbol_type\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/tkeep\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/tlast} \
{/test_payload_generator/top_payload_generator0/payload0/tready} \
{/test_payload_generator/top_payload_generator0/payload0/tstrb\[31:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/tvalid} \
{/test_payload_generator/top_payload_generator0/payload0/user_define0\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define1\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define2\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define3\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define4\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define5\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define6\[7:0\]} \
{/test_payload_generator/top_payload_generator0/payload0/user_define7\[7:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G3" \
}
wvSelectSignal -win $_nWave1 {( "G2" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 )} 
wvSetPosition -win $_nWave1 {("G2" 58)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 128.740305 -snap {("G2" 47)}
wvSelectSignal -win $_nWave1 {( "G2" 48 )} 
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
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetCursor -win $_nWave1 136.720076 -snap {("G2" 20)}
wvSetCursor -win $_nWave1 130.336260 -snap {("G2" 20)}
wvSetCursor -win $_nWave1 139.380000 -snap {("G2" 20)}
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSetCursor -win $_nWave1 244.712977 -snap {("G2" 19)}
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetCursor -win $_nWave1 240.457099 -snap {("G2" 18)}
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 3 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G2" 20 )} 
wvSetCursor -win $_nWave1 242.053053 -snap {("G2" 18)}
wvSetCursor -win $_nWave1 243.117023 -snap {("G2" 19)}
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvResizeWindow -win $_nWave1 0 23 1462 841
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSetPosition -win $_nWave1 {("G2" 19)}
wvExpandBus -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 698)}
wvScrollDown -win $_nWave1 2
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 658 )} 
wvSelectSignal -win $_nWave1 {( "G2" 657 )} 
wvSelectSignal -win $_nWave1 {( "G2" 656 )} 
wvSelectSignal -win $_nWave1 {( "G2" 655 )} 
wvSelectSignal -win $_nWave1 {( "G2" 651 )} 
wvSelectSignal -win $_nWave1 {( "G2" 652 )} 
wvScrollUp -win $_nWave1 625
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSetPosition -win $_nWave1 {("G2" 19)}
wvCollapseBus -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 58)}
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSetCursor -win $_nWave1 243.197788 -snap {("G2" 18)}
wvSetCursor -win $_nWave1 249.583725 -snap {("G2" 18)}
wvSetCursor -win $_nWave1 240.536981 -snap {("G2" 18)}
wvSelectSignal -win $_nWave1 {( "G2" 1 )} 
wvSetCursor -win $_nWave1 92.596094 -snap {("G2" 1)}
wvSetCursor -win $_nWave1 133.572527 -snap {("G2" 18)}
wvSetCursor -win $_nWave1 237.876173 -snap {("G2" 18)}
wvSetCursor -win $_nWave1 233.618882 -snap {("G2" 18)}
wvSetCursor -win $_nWave1 130.379558 -snap {("G2" 18)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
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
wvSelectSignal -win $_nWave1 {( "G2" 39 )} 
wvSelectSignal -win $_nWave1 {( "G2" 39 )} 
wvSetRadix -win $_nWave1 -format UDec
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSetCursor -win $_nWave1 129.315235 -snap {("G2" 20)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G2" 7 )} 
wvSetCursor -win $_nWave1 95.256902 -snap {("G2" 21)}
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSetPosition -win $_nWave1 {("G2" 19)}
wvExpandBus -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 698)}
wvScrollUp -win $_nWave1 624
wvSelectSignal -win $_nWave1 {( "G2" 19 )} 
wvSetPosition -win $_nWave1 {("G2" 19)}
wvCollapseBus -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 19)}
wvSetPosition -win $_nWave1 {("G2" 58)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 129.847397 -snap {("G2" 18)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
