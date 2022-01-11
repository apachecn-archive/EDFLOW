// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xeventstreamswitch.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XEventstreamswitch_CfgInitialize(XEventstreamswitch *InstancePtr, XEventstreamswitch_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Config_BaseAddress = ConfigPtr->Config_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XEventstreamswitch_Set_config_V(XEventstreamswitch *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEventstreamswitch_WriteReg(InstancePtr->Config_BaseAddress, XEVENTSTREAMSWITCH_CONFIG_ADDR_CONFIG_V_DATA, Data);
}

u32 XEventstreamswitch_Get_config_V(XEventstreamswitch *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEventstreamswitch_ReadReg(InstancePtr->Config_BaseAddress, XEVENTSTREAMSWITCH_CONFIG_ADDR_CONFIG_V_DATA);
    return Data;
}
