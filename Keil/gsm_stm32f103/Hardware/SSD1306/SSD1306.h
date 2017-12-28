/**
  ******************************************************************************
  * @file    SSD1306.h
  * @author  Waveshare Team
  * @version 
  * @date    13-October-2014
  * @brief   This file contains all the functions prototypes for the SSD1306 OLED firmware driver.
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, WAVESHARE SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  ******************************************************************************
  */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef _SSD1306_H_
#define _SSD1306_H_

/* Includes ------------------------------------------------------------------*/
#include "SSD1306.h"
#include "MacroAndConst.h"
#include "Fonts.h"
#include "gpio.h"
#include "includes.h"
#include "delay.h"

#define SH1106
//#define SSD1306

//#define INTERFACE_3WIRE_SPI   //3-wire SPI 
#define INTERFACE_4WIRE_SPI     //4-wire SPI 
//#define INTERFACE_IIC         //I2C

//#define HARDWARE_PROTOCOL
#define SOFTWARE_PROTOCOL


#define SSD1306_CS_PIN          GPIO_PIN_7
#define SSD1306_CLK_PIN         GPIO_PIN_3
#define SSD1306_DIN_PIN         GPIO_PIN_5
#define SSD1306_RES_PIN         GPIO_PIN_6
#define SSD1306_DC_PIN          GPIO_PIN_4

#define SSD1306_CS_GPIO         GPIOB
#define SSD1306_CLK_GPIO        GPIOB
#define SSD1306_DIN_GPIO        GPIOB
#define SSD1306_RES_GPIO        GPIOB
#define SSD1306_DC_GPIO         GPIOB 

#define __SSD1306_CS_SET()      GPIO_WritePin(SSD1306_CS_GPIO, SSD1306_CS_PIN, PINSET)
#define __SSD1306_CS_CLR()      GPIO_WritePin(SSD1306_CS_GPIO, SSD1306_CS_PIN, PINRES)

#define __SSD1306_RES_SET()     GPIO_WritePin(SSD1306_RES_GPIO, SSD1306_RES_PIN, PINSET)
#define __SSD1306_RES_CLR()     GPIO_WritePin(SSD1306_RES_GPIO, SSD1306_RES_PIN, PINRES)

#define __SSD1306_DC_SET()      GPIO_WritePin(SSD1306_DC_GPIO, SSD1306_DC_PIN, PINSET)
#define __SSD1306_DC_CLR()      GPIO_WritePin(SSD1306_DC_GPIO, SSD1306_DC_PIN, PINRES)

#define __SSD1306_CLK_SET()     GPIO_WritePin(SSD1306_CLK_GPIO, SSD1306_CLK_PIN, PINSET)
#define __SSD1306_CLK_CLR()     GPIO_WritePin(SSD1306_CLK_GPIO, SSD1306_CLK_PIN, PINRES)

#define __SSD1306_DIN_SET()     GPIO_WritePin(SSD1306_DIN_GPIO, SSD1306_DIN_PIN, PINSET)
#define __SSD1306_DIN_CLR()     GPIO_WritePin(SSD1306_DIN_GPIO, SSD1306_DIN_PIN, PINRES)

#define __SSD1306_WRITE_BYTE(DATA) spi_write_byte(DATA)
/*------------------------------------------------------------------------------------------------------*/



extern void ssd1306_clear_screen(uint8_t chFill);
extern void ssd1306_refresh_gram(void);
extern void ssd1306_draw_point(uint8_t chXpos, uint8_t chYpos, uint8_t chPoint);
extern void ssd1306_fill_screen(uint8_t chXpos1, uint8_t chYpos1, uint8_t chXpos2, uint8_t chYpos2, uint8_t chDot);
extern void ssd1306_display_on(void);
extern void ssd1306_display_char(uint8_t chXpos, uint8_t chYpos, uint8_t chChr, uint8_t chSize, uint8_t chMode);
extern void ssd1306_display_num(uint8_t chXpos, uint8_t chYpos, uint32_t chNum, uint8_t chLen,uint8_t chSize);
extern void ssd1306_display_string(uint8_t chXpos, uint8_t chYpos, const uint8_t *pchString, uint8_t chSize, uint8_t chMode);
extern void ssd1306_draw_1616char(uint8_t chXpos, uint8_t chYpos, uint8_t chChar);
extern void ssd1306_draw_3216char(uint8_t chXpos, uint8_t chYpos, uint8_t chChar);
extern void ssd1306_draw_bitmap(uint8_t chXpos, uint8_t chYpos, const uint8_t *pchBmp, uint8_t chWidth, uint8_t chHeight);
void ssd1306_draw_antenna(uint8_t chXpos, uint8_t chYpos, uint8_t level);
void ssd1306_clear_region(uint8_t chXpos, uint8_t chYpos, uint8_t chWidth, uint8_t chHeight);
	
extern void ssd1306_init(void);

#endif

/*-------------------------------END OF FILE-------------------------------*/


