/**
  ECCP1 Generated Driver API Header File

  @Company
    Microchip Technology Inc.

  @File Name
    eccp1.h

  @Summary
    This is the generated header file for the ECCP1 driver using PIC10 / PIC12 / PIC16 / PIC18 MCUs

  @Description
    This header file provides APIs for driver for ECCP1.
    Generation Information :
        Product Revision  :  PIC10 / PIC12 / PIC16 / PIC18 MCUs - 1.81.3
        Device            :  PIC18F24K50
        Driver Version    :  2.02
    The generated drivers are tested against the following:
        Compiler          :  XC8 2.20 and above
        MPLAB 	          :  MPLAB X 5.40
*/

/*
    (c) 2018 Microchip Technology Inc. and its subsidiaries. 
    
    Subject to your compliance with these terms, you may use Microchip software and any 
    derivatives exclusively with Microchip products. It is your responsibility to comply with third party 
    license terms applicable to your use of third party software (including open source software) that 
    may accompany Microchip software.
    
    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER 
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY 
    IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS 
    FOR A PARTICULAR PURPOSE.
    
    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND 
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP 
    HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO 
    THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL 
    CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT 
    OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS 
    SOFTWARE.
*/

#ifndef ECCP1_H
#define ECCP1_H

/**
  Section: Included Files
*/

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif

/** 
   Section: Data Type Definition
*/
        
/**
 @Summary
   Defines the values to convert from 16bit to two 8 bit and vice versa

 @Description
   This routine used to get two 8 bit values from 16bit also
   two 8 bit value are combine to get 16bit.

 Remarks:
   None
 */

typedef union CCPR1Reg_tag
{
   struct
   {
      uint8_t ccpr1l;
      uint8_t ccpr1h;
   };
   struct
   {
      uint16_t ccpr1_16Bit;
   };
} CCP1_PERIOD_REG_T ;

/**
  Section: Capture Module APIs
*/

/**
  @Summary
    Initializes the ECCP1

  @Description
    This routine initializes the ECCP1_Initialize.
    This routine must be called before any other ECCP1 routine is called.
    This routine should only be called once during system initialization.

  @Preconditions
    None

  @Param
    None

  @Returns
    None

  @Comment
    

 @Example
    <code>
    ECCP1_Initialize();
    </code>
 */
void ECCP1_Initialize(void);

/**
  @Summary
    Determines the completion of the data captured.

  @Description
    This routine is used to determine if data capture is completed.
    When data capture is complete routine returns 1. It returns 0 otherwise.

  @Preconditions
    ECCP1_Initialize()function should have been called before calling this function.

  @Returns
    Returns 1 if data capture is completed
    true - Indicates data capture complete
    false - Indicates data capture is not complete

  @Param
    None

  @Example
    <code>
    ECCP1_Initialize();
    while(!ECCP1_IsCapturedDataReady());
    </code>
*/
bool ECCP1_IsCapturedDataReady(void);

/**
  @Summary
    Reads the 16 bit capture value.

  @Description
    This routine reads the 16 bit capture value.

  @Preconditions
    ECCP1_Initialize() and
    ECCP1_IsCapturedDataReady() function should have been
    called before calling this function.

  @Param
    None.

  @Returns
    Returns 16 bit captured value

  @Example
    <code>
    uint16_t capture;

    ECCP1_Initialize();

    while(!ECCP1_IsCapturedDataReady());   //Used only for polling method
    capture = ECCP1_CaptureRead();
    </code>
*/
uint16_t ECCP1_CaptureRead(void);

#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif

#endif  //ECCP1_H
/**
 End of File
*/

