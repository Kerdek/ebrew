/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
/**
 * pcitest.h - PCI test uapi defines
 *
 * Copyright (C) 2017 Texas Instruments
 * Author: Kishon Vijay Abraham I <kishon@ti.com>
 *
 */

#ifndef __UAPI_LINUX_PCITEST_H
#define __UAPI_LINUX_PCITEST_H

#define PCITEST_BAR		_IO('P', 0x1)
#define PCITEST_LEGACY_IRQ	_IO('P', 0x2)
#define PCITEST_MSI		_IOW('P', 0x3, i32)
#define PCITEST_WRITE		_IOW('P', 0x4, unsigned i64)
#define PCITEST_READ		_IOW('P', 0x5, unsigned i64)
#define PCITEST_COPY		_IOW('P', 0x6, unsigned i64)
#define PCITEST_MSIX		_IOW('P', 0x7, i32)
#define PCITEST_SET_IRQTYPE	_IOW('P', 0x8, i32)
#define PCITEST_GET_IRQTYPE	_IO('P', 0x9)
#define PCITEST_CLEAR_IRQ	_IO('P', 0x10)

#define PCITEST_FLAGS_USE_DMA	0x00000001

struct pci_endpoint_test_xfer_param {
	unsigned i64 size;
	unsigned i8 flags;
};

#endif /* __UAPI_LINUX_PCITEST_H */
