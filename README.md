#### DAP-Link (CMSIS-DAP) Fireware for JLink OB Hardware

- MCU: STM32F103C8
- Debug Interface: SWD (TMS, TCK, nRESET, GND)
- No Support JTAG interface mode
- No Support SWO UART
- No Support Virtual UART



#### SWD PIN

**Note:** Because of only support SWD mode, so JTAG's TDI, TDO, nTRST pins are unused.

| SWD Interface         | STM32F103C8 Pin |
| --------------------- | --------------- |
| SWDIO/TMS             | PA4             |
| SWCLK/TCK             | PA3             |
| nRESET                | PA2             |
| GND                   | GND             |
| 5V or 3.3V (optional) | 5V or 3.3V      |



#### JTAG PIN

**Note:** If need support JTAG interface mode, only edit `MAIN/DAP_config.h` file:

```c
/// Indicate that JTAG communication mode is available at the Debug Port.
/// This information is returned by the command \ref DAP_Info as part of <b>Capabilities</b>.
#define DAP_JTAG   0    ///< JTAG Mode: 1 = available, 0 = not available.
```



| JTAG Interface | STM32F103C8 Pin |
| -------------- | --------------- |
| TMS            | PA4             |
| TCK            | PA3             |
| nRESET         | PA2             |
| nTRST          | PA8             |
| TDO            | PA6             |
| TDI            | PB0             |
| GND            | GND             |
| 5V             | 5V              |
| 3.3V           | 3.3V            |

