/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

#include "ETH_example.h"

#include "TCPIPLibrary/udpv4.h"
#include "TCPIPLibrary/udpv4_port_handler_table.h"

#define IPV4_BROADCAST 0xFFFFFFFF

uint8_t udpData;
bool receivedMsg = false;


/*To use this example:
Add the following line to UDP_CallBackTable[] in udpv4_port_handler_table.c
    {65531, Demo_UDP_Receive},
    This will direct all UDP messages to port 65531 to the function Demo_UDP_Receive()
Also add the following function declaration into udpv4_port_handler_table.h
    void Demo_UDP_Receive(int length);
*/
void Demo_UDP_Receive(int length)
{
    //length holds the number of bytes received
    //this example, however, will only receive the first byte
    UDP_ReadBlock(&udpData, 1);
    receivedMsg = true;
}

void ETH_example(void)
{
    while(1)
    {
        //Network_Manage() needs to be periodically called to receive messages
        Network_Manage();
        if (receivedMsg)
        {
            //Broadcast the received message, onto the same UDP port
            if (UDP_Start(IPV4_BROADCAST, 65531, 65531) == SUCCESS)
            {
                UDP_Write8(udpData);
                UDP_Send();   
            }
            receivedMsg = false;
        }
    }
}