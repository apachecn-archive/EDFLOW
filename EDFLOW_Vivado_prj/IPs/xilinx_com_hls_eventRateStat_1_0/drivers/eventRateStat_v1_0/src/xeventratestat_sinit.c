// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xeventratestat.h"

extern XEventratestat_Config XEventratestat_ConfigTable[];

XEventratestat_Config *XEventratestat_LookupConfig(u16 DeviceId) {
	XEventratestat_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XEVENTRATESTAT_NUM_INSTANCES; Index++) {
		if (XEventratestat_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XEventratestat_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XEventratestat_Initialize(XEventratestat *InstancePtr, u16 DeviceId) {
	XEventratestat_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XEventratestat_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XEventratestat_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif
