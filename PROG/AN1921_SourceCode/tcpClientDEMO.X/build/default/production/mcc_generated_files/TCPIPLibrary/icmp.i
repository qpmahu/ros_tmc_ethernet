
# 1 "mcc_generated_files/TCPIPLibrary/icmp.c"

# 13 "C:\Program Files\Microchip\xc8v220\pic\include\c90\stdint.h"
typedef signed char int8_t;

# 20
typedef signed int int16_t;

# 36
typedef signed long int int32_t;

# 52
typedef unsigned char uint8_t;

# 58
typedef unsigned int uint16_t;

# 72
typedef unsigned long int uint32_t;

# 88
typedef signed char int_least8_t;

# 96
typedef signed int int_least16_t;

# 105
typedef signed long int int_least24_t;

# 118
typedef signed long int int_least32_t;

# 136
typedef unsigned char uint_least8_t;

# 143
typedef unsigned int uint_least16_t;

# 151
typedef unsigned long int uint_least24_t;

# 162
typedef unsigned long int uint_least32_t;

# 181
typedef signed char int_fast8_t;

# 188
typedef signed int int_fast16_t;

# 196
typedef signed long int int_fast24_t;

# 208
typedef signed long int int_fast32_t;

# 224
typedef unsigned char uint_fast8_t;

# 230
typedef unsigned int uint_fast16_t;

# 237
typedef unsigned long int uint_fast24_t;

# 247
typedef unsigned long int uint_fast32_t;

# 268
typedef int32_t intmax_t;

# 282
typedef uint32_t uintmax_t;

# 289
typedef int16_t intptr_t;




typedef uint16_t uintptr_t;

# 4 "C:/Program Files (x86)/Microchip/MPLABXv540/packs/Microchip/PIC16F1xxxx_DFP/1.4.119/xc8\pic\include\__size_t.h"
typedef unsigned size_t;

# 7 "C:\Program Files\Microchip\xc8v220\pic\include\c90\stdarg.h"
typedef void * va_list[1];

#pragma intrinsic(__va_start)
extern void * __va_start(void);

#pragma intrinsic(__va_arg)
extern void * __va_arg(void *, ...);

# 43 "C:\Program Files\Microchip\xc8v220\pic\include\c90\stdio.h"
struct __prbuf
{
char * ptr;
void (* func)(char);
};

# 29 "C:\Program Files\Microchip\xc8v220\pic\include\c90\errno.h"
extern int errno;

# 12 "C:\Program Files\Microchip\xc8v220\pic\include\c90\conio.h"
extern void init_uart(void);

extern char getch(void);
extern char getche(void);
extern void putch(char);
extern void ungetch(char);

extern __bit kbhit(void);

# 23
extern char * cgets(char *);
extern void cputs(const char *);

# 88 "C:\Program Files\Microchip\xc8v220\pic\include\c90\stdio.h"
extern int cprintf(char *, ...);
#pragma printf_check(cprintf)



extern int _doprnt(struct __prbuf *, const register char *, register va_list);


# 180
#pragma printf_check(vprintf) const
#pragma printf_check(vsprintf) const

extern char * gets(char *);
extern int puts(const char *);
extern int scanf(const char *, ...) __attribute__((unsupported("scanf() is not supported by this compiler")));
extern int sscanf(const char *, const char *, ...) __attribute__((unsupported("sscanf() is not supported by this compiler")));
extern int vprintf(const char *, va_list) __attribute__((unsupported("vprintf() is not supported by this compiler")));
extern int vsprintf(char *, const char *, va_list) __attribute__((unsupported("vsprintf() is not supported by this compiler")));
extern int vscanf(const char *, va_list ap) __attribute__((unsupported("vscanf() is not supported by this compiler")));
extern int vsscanf(const char *, const char *, va_list) __attribute__((unsupported("vsscanf() is not supported by this compiler")));

#pragma printf_check(printf) const
#pragma printf_check(sprintf) const
extern int sprintf(char *, const char *, ...);
extern int printf(const char *, ...);

# 6 "C:\Program Files\Microchip\xc8v220\pic\include\c90\stddef.h"
typedef int ptrdiff_t;

# 49 "mcc_generated_files/TCPIPLibrary/tcpip_types.h"
typedef enum {TCB_ERROR = -1, TCB_NO_ERROR = 0} tcbError_t;

typedef union
{
uint16_t value;
struct
{
unsigned int priorityCodePoint:3;
unsigned int dropEligible:1;
unsigned int vlanId:12;
};
} tci_t;

typedef struct
{
uint8_t destinationMAC[6];
uint8_t sourceMAC[6];
union
{
uint16_t type;
uint16_t length;
uint16_t tpid;
}id;




} ethernetFrame_t;

uint8_t Control_Byte = 0x00;

# 131
typedef struct
{
unsigned ihl:4;
unsigned version:4;
unsigned ecn:2;
unsigned dscp:6;
uint16_t length;
uint16_t identifcation;
unsigned fragmentOffsetHigh:5;
unsigned :1;
unsigned dontFragment:1;
unsigned moreFragments:1;
uint8_t fragmentOffsetLow;
uint8_t timeToLive;
uint8_t protocol;
uint16_t headerCksm;
uint32_t srcIpAddress;
uint32_t dstIpAddress;


} ipv4Header_t;


typedef struct
{
uint32_t srcIpAddress;
uint32_t dstIpAddress;
uint8_t protocol;
uint8_t z;
uint16_t length;
} ipv4_pseudo_header_t;

typedef struct
{
union
{
uint16_t typeCode;
struct
{
uint8_t code;
uint8_t type;
};
};
uint16_t checksum;
} icmpHeader_t;


typedef struct
{
union
{
uint16_t typeCode;
struct
{
uint8_t code;
uint8_t type;
};
};
uint16_t checksum;
} icmpv6Header_t;


typedef enum
{
ECHO_REPLY = 0x0000,

DEST_NETWORK_UNREACHABLE = 0x0300,
DEST_HOST_UNREACHABLE = 0x0301,
DEST_PROTOCOL_UNREACHABLE = 0x0302,
DEST_PORT_UNREACHABLE = 0x0303,
FRAGMENTATION_REQUIRED = 0x0304,
SOURCE_ROUTE_FAILED = 0x0305,
DESTINATION_NETWORK_UNKNOWN = 0x0306,
SOURCE_HOST_ISOLATED = 0x0307,
NETWORK_ADMINISTRATIVELY_PROHIBITED = 0x0308,
HOST_ADMINISTRATIVELY_PROHIBITED = 0x0309,
NETWORK_UNREACHABLE_FOR_TOS = 0x030A,
HOST_UNREACHABLE_FOR_TOS = 0x030B,
COMMUNICATION_ADMINISTRATIVELY_PROHIBITED = 0x030C,
HOST_PRECEDENCE_VIOLATION = 0x030D,
PRECEDENCE_CUTOFF_IN_EFFECT = 0x030E,

SOURCE_QUENCH = 0x0400,

REDIRECT_DATAGRAM_FOR_THE_NETWORK = 0x0500,
REDIRECT_DATAGRAM_FOR_THE_HOST = 0x0501,
REDIRECT_DATAGRAM_FOR_THE_TOS_AND_NETWORK = 0x0502,
REDIRECT_DATAGRAM_FOR_THE_TOS_AND_HOST = 0x0503,

ALTERNATE_HOST_ADDRESS = 0x0600,

ECHO_REQUEST = 0x0800,


UNASSIGNED_ECHO_TYPE_CODE_REQUEST_1 = 0x082A,
UNASSIGNED_ECHO_TYPE_CODE_REQUEST_2 = 0x08FC,

ROUTER_ADVERTISEMENT = 0x0900,
ROUTER_SOLICITATION = 0x0A00,
TRACEROUTE = 0x3000
} icmpTypeCodes_t;

typedef struct
{
uint16_t srcPort;
uint16_t dstPort;
uint16_t length;
uint16_t checksum;
} udpHeader_t;

typedef struct
{
uint16_t sourcePort;
uint16_t destPort;
uint32_t sequenceNumber;
uint32_t ackNumber;
union{
uint8_t byte13;
struct{
uint8_t ns:1;
uint8_t reserved:3;
uint8_t dataOffset:4;
};
};

union{
uint8_t flags;
struct{
uint8_t fin:1;
uint8_t syn:1;
uint8_t rst:1;
uint8_t psh:1;
uint8_t ack:1;
uint8_t urg:1;
uint8_t ece:1;
uint8_t cwr:1;
};
};

uint16_t windowSize;
uint16_t checksum;
uint16_t urgentPtr;



} tcpHeader_t;

typedef struct
{
uint16_t version:4;
uint16_t trafficClass:8;
uint16_t flowLabel1stNibble:4;

uint16_t flowLabelRest;
uint16_t payloadLength;
uint8_t nextHeader;
uint8_t hopLimit;
uint8_t srcAddress[16];
uint8_t dstAddress[16];

} ipv6Header_t;


typedef enum
{
HOPOPT_TCPIP = 0,
ICMP_TCPIP = 1,
IGMP_TCPIP = 2,
GGP_TCPIP = 3,
IPV4_TCPIP = 4,
ST_TCPIP = 5,
TCP_TCPIP = 6,
CBT_TCPIP = 7,
EGP_TCPIP = 8,
IGP_TCPIP = 9,
BBN_RCC_MON_TCPIP = 10,
NVP_II_TCPIP = 11,
PUP_TCPIP = 12,
ARGUS_TCPIP = 13,
EMCON_TCPIP = 14,
XNET_TCPIP = 15,
CHAOS_TCPIP = 16,
UDP_TCPIP = 17,
MUX_TCPIP = 18,
DCN_MEAS_TCPIP = 19,
HMP_TCPIP = 20,
PRM_TCPIP = 21,
XNS_IDP_TCPIP = 22,
TRUNK_1_TCPIP = 23,
TRUNK_2_TCPIP = 24,
LEAF_1_TCPIP = 25,
LEAF_2_TCPIP = 26,
RDP_TCPIP = 27,
IRTP_TCPIP = 28,
ISO_TP4_TCPIP = 29,
NETBLT_TCPIP = 30,
MFE_NSP_TCPIP = 31,
MERIT_INP_TCPIP = 32,
DCCP_TCPIP = 33,
THREEPC_TCPIP = 34,
IDPR_TCPIP = 35,
XTP_TCPIP = 36,
DDP_TCPIP = 37,
IDPR_CMTP_TCPIP = 38,
TPpp_TCPIP = 39,
IL_TCPIP = 40,
IPV6_TUNNEL_TCPIP = 41,
SDRP_TCPIP = 42,
IPV6_Route_TCPIP = 43,
IPV6_Frag_TCPIP = 44,
IDRP_TCPIP = 45,
RSVP_TCPIP = 46,
GRE_TCPIP = 47,
DSR_TCPIP = 48,
BNA_TCPIP = 49,
ESP_TCPIP = 50,
AH_TCPIP = 51,
I_NLSP_TCPIP = 52,
SWIPE_TCPIP = 53,
NARP_TCPIP = 54,
MOBILE_TCPIP = 55,
TLSP_TCPIP = 56,
SKIP_TCPIP = 57,
IPV6_ICMP_TCPIP = 58,
IPV6_NoNxt_TCPIP = 59,
IPV6_Opts_TCPIP = 60,
CFTP_TCPIP = 62,
SAT_EXPAK_TCPIP = 64,
KRYPTOLAN_TCPIP = 65,
RVD_TCPIP = 66,
IPPC_TCPIP = 67,
SAT_MON_TCPIP = 69,
VISA_TCPIP = 70,
IPCV_TCPIP = 71,
CPNX_TCPIP = 72,
CPHB_TCPIP = 73,
WSN_TCPIP = 74,
PVP_TCPIP = 75,
BR_SAT_MON_TCPIP = 76,
SUN_ND_TCPIP = 77,
WB_MON_TCPIP = 78,
WB_EXPAK_TCPIP = 79,
ISO_IP_TCPIP = 80,
VMTP_TCPIP = 81,
SECURE_VMTP_TCPIP = 82,
VINES_TCPIP = 83,
TTP_TCPIP = 84,
IPTM_TCPIP = 84,
NSFNET_IGP_TCPIP = 85,
DGP_TCPIP = 86,
TCF_TCPIP = 87,
EIGRP_TCPIP = 88,
OSPFIGP_TCPIP = 89,
Sprite_RPC_TCPIP = 90,
LARP_TCPIP = 91,
MTP_TCPIP = 92,
AX25_TCPIP = 93,
IPIP_TCPIP = 94,
MICP_TCPIP = 95,
SCC_SP_TCPIP = 96,
ETHERIP_TCPIP = 97,
ENCAP_TCPIP = 98,
GMTP_TCPIP = 100,
IFMP_TCPIP = 101,
PNNI_TCPIP = 102,
PIM_TCPIP = 103,
ARIS_TCPIP = 104,
SCPS_TCPIP = 105,
QNX_TCPIP = 106,
A_N_TCPIP = 107,
IPComp_TCPIP = 108,
SNP_TCPIP = 109,
Compaq_Peer_TCPIP = 110,
IPX_in_IP_TCPIP = 111,
VRRP_TCPIP = 112,
PGM_TCPIP = 113,
L2TP_TCPIP = 115,
DDX_TCPIP = 116,
IATP_TCPIP = 117,
STP_TCPIP = 118,
SRP_TCPIP = 119,
UTI_TCPIP = 120,
SMP_TCPIP = 121,
SM_TCPIP = 122,
PTP_TCPIP = 123,
ISIS_TCPIP = 124,
FIRE_TCPIP = 125,
CRTP_TCPIP = 126,
CRUDP_TCPIP = 127,
SSCOPMCE_TCPIP = 128,
IPLT_TCPIP = 129,
SPS_TCPIP = 130,
PIPE_TCPIP = 131,
SCTP_TCPIP = 132,
FC_TCPIP = 133
} ipProtocolNumbers;

typedef struct
{
union{
uint32_t s_addr;
uint8_t s_addr_byte[4];
};
}inAddr_t;

typedef struct
{
union {
uint8_t s6_u8[16];
uint16_t s6_u16[8];
uint32_t s6_u32[4];
} s6;



}in6Addr_t;

typedef struct
{
uint16_t port;
inAddr_t addr;
}sockaddr_in_t;

typedef struct {

uint16_t in6_port;
uint32_t in6_flowinfo;
in6Addr_t in6_addr;
uint32_t in6_scope_id;
}sockaddr_in6_t;

extern const char *network_errors[];

typedef enum
{
ERROR =0,
SUCCESS,
LINK_NOT_FOUND,
BUFFER_BUSY,
TX_LOGIC_NOT_IDLE,
MAC_NOT_FOUND,
IP_WRONG_VERSION,
IPV4_CHECKSUM_FAILS,
DEST_IP_NOT_MATCHED,
ICMP_CHECKSUM_FAILS,
UDP_CHECKSUM_FAILS,
TCP_CHECKSUM_FAILS,
DMA_TIMEOUT,
PORT_NOT_AVAILABLE,
ARP_IP_NOT_MATCHED,
EAPoL_PACKET_FAILURE,
INCORRECT_IPV4_HLEN,
IPV4_NO_OPTIONS,
TX_QUEUED
}error_msg;

typedef struct
{
inAddr_t dest_addr;
}destIP_t;


typedef int8_t socklistsize_t;

typedef void (*ip_receive_function_ptr)(int);

# 58 "mcc_generated_files/TCPIPLibrary/network.h"
void Network_Init(void);
void Network_Read(void);
void Network_Manage(void);
void Network_WaitForLink(void);
void timersInit();

# 15 "C:\Program Files\Microchip\xc8v220\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 51 "mcc_generated_files/TCPIPLibrary/mac_address.h"
typedef union
{
uint8_t mac_array[6];
struct { uint8_t byte1,byte2,byte3,byte4,byte5,byte6; } s;
} mac48Address_t;

extern const mac48Address_t broadcastMAC;
extern const mac48Address_t macAddress;
extern mac48Address_t hostMacAddress;

const mac48Address_t *MAC_getAddress(void);

# 49 "mcc_generated_files/TCPIPLibrary/ethernet_driver.h"
typedef struct
{
uint16_t byteCount;
unsigned long_drop_event:1;
unsigned :1;
unsigned excessCarrierEvent:1;
unsigned :1;
unsigned crcError:1;
unsigned lengthCheckError:1;
unsigned lengthLongError:1;
unsigned rxOK:1;
unsigned rxMulticast:1;
unsigned rxBroadcast:1;
unsigned dribbleNibble:1;
unsigned controlFrame:1;
unsigned pauseControlFrame:1;
unsigned unknownContrlFrame:1;
unsigned vlanTagPresent:1;
unsigned zero:1;
}receiveStatusVector_t;

typedef struct
{
unsigned error:1;
unsigned pktReady:1;
unsigned up:1;
unsigned idle:1;
unsigned linkChange:1;
unsigned bufferBusy:1;
unsigned :3;
uint16_t saveRDPT;
uint16_t saveWRPT;
} ethernetDriver_t;

typedef struct
{
uint16_t flags;
uint16_t packetStart;
uint16_t packetEnd;

void *prevPacket;
void *nextPacket;
} txPacket_t;

extern volatile ethernetDriver_t ethData;

# 99
void ETH_Init(void);
void ETH_EventHandler(void);
void ETH_NextPacketUpdate();
void ETH_ResetReceiver(void);
void ETH_SendSystemReset(void);


uint16_t ETH_ReadBlock(void*, uint16_t);
uint8_t ETH_Read8(void);
uint16_t ETH_Read16(void);
uint32_t ETH_Read24(void);
uint32_t ETH_Read32(void);
void ETH_Dump(uint16_t);
void ETH_Flush(void);

uint16_t ETH_GetFreeTxBufferSize(void);

error_msg ETH_WriteStart(const mac48Address_t *dest_mac, uint16_t type);
uint16_t ETH_WriteString(const char *string);
uint16_t ETH_WriteBlock(const void *, uint16_t);
void ETH_Write8(uint8_t);
void ETH_Write16(uint16_t);
void ETH_Write24(uint32_t data);
void ETH_Write32(uint32_t);
void ETH_Insert(char *,uint16_t, uint16_t);
error_msg ETH_Copy(uint16_t);
error_msg ETH_Send(void);

uint16_t ETH_TxComputeChecksum(uint16_t position, uint16_t len, uint16_t seed);
uint16_t ETH_RxComputeChecksum(uint16_t len, uint16_t seed);

void ETH_GetMAC(uint8_t *);
void ETH_SetMAC(uint8_t *);
uint16_t ETH_GetWritePtr();
void ETH_SaveRDPT(void);
void ETH_ResetReadPtr();
uint16_t ETH_GetReadPtr(void);
void ETH_SetReadPtr(uint16_t);
uint16_t ETH_GetStatusVectorByteCount(void);
void ETH_SetStatusVectorByteCount(uint16_t);

void ETH_ResetByteCount(void);
uint16_t ETH_GetByteCount(void);

uint16_t ETH_ReadSavedWRPT(void);
void ETH_SaveWRPT(void);
void ETH_SetRxByteCount(uint16_t count);
uint16_t ETH_GetRxByteCount();

bool ETH_CheckLinkUp();

void ETH_TxReset(void);
void ETH_MoveBackReadPtr(uint16_t offset);

# 15 "C:\Program Files\Microchip\xc8v220\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 66 "mcc_generated_files/TCPIPLibrary/ipv4.h"
void IPV4_Init(void);

# 73
error_msg IPV4_Packet(void);

# 90
error_msg IPv4_Start(uint32_t dstAddress, ipProtocolNumbers protocol);

# 101
uint16_t IPV4_PseudoHeaderChecksum(uint16_t payloadLen);

# 115
error_msg IPV4_Send(uint16_t payloadLength);

# 122
uint16_t IPV4_GetStartPosition(void);

# 129
uint16_t IPV4_GetDatagramLength(void);

# 58 "mcc_generated_files/TCPIPLibrary/icmp.h"
error_msg ICMP_Receive(ipv4Header_t *ipv4Hdr);

# 68
error_msg ICMP_EchoReply(ipv4Header_t *ipv4Hdr);

# 80
error_msg ICMP_PortUnreachable(uint32_t srcIPAddress,uint32_t destIPAddress, uint16_t length);

# 89
bool isPortUnreachable(uint16_t port);

# 95
void resetPortUnreachable(void);

# 40 "mcc_generated_files/TCPIPLibrary/ip_database.h"
typedef struct {
uint32_t ipv4_myAddress;
uint32_t ipv4_dns[2];
uint32_t ipv4_subnetMask;
uint32_t ipv4_router;
uint32_t ipv4_gateway;
uint32_t ipv4_ntpAddress[2];
uint32_t ipv4_tftpAddress;
} ip_db_info_t;


extern ip_db_info_t ip_database_info;

# 72
void ipdb_init(void);
uint32_t makeStrToIpv4Address(char *str);
char *makeIpv4AddresstoStr(uint32_t addr);

# 51 "mcc_generated_files/TCPIPLibrary/icmp.c"
uint16_t portUnreachable = 0;

# 58
error_msg ICMP_Receive(ipv4Header_t *ipv4Hdr)
{
icmpHeader_t icmpHdr;
error_msg ret = ERROR;
ETH_ReadBlock(&icmpHdr, sizeof(icmpHeader_t));

if(ipv4Hdr->dstIpAddress == 0xFFFFFFFF)
return DEST_IP_NOT_MATCHED;
switch(((((uint16_t)(icmpTypeCodes_t)icmpHdr.typeCode & (uint16_t)0xFF00) >> 8) | (((uint16_t)(icmpTypeCodes_t)icmpHdr.typeCode & (uint16_t)0x00FF) << 8)))
{
case ECHO_REQUEST:
case UNASSIGNED_ECHO_TYPE_CODE_REQUEST_1:
case UNASSIGNED_ECHO_TYPE_CODE_REQUEST_2:
{
ret = ICMP_EchoReply(ipv4Hdr);
}
break;
case DEST_PORT_UNREACHABLE:
ETH_Dump(4);
ETH_ReadBlock(ipv4Hdr,sizeof(ipv4Header_t));
if(5 == ipv4Hdr->ihl)
{
portUnreachable = ETH_Read16();
}
break;
default:
break;
}

return ret;
}

# 99
error_msg ICMP_EchoReply(ipv4Header_t *ipv4Hdr)
{
uint16_t cksm =0;
error_msg ret = ERROR;
uint16_t identifier;
uint16_t sequence;

identifier = ETH_Read16();
sequence = ETH_Read16();
ret = IPv4_Start(ipv4Hdr->srcIpAddress, ipv4Hdr->protocol);
if(ret == SUCCESS)
{
uint16_t icmp_cksm_start;
uint16_t ipv4PayloadLength = ipv4Hdr->length - sizeof(ipv4Header_t);

ipv4PayloadLength = ipv4Hdr->length - (uint16_t)(ipv4Hdr->ihl << 2);

ETH_Write16(ECHO_REPLY);
ETH_Write16(0);

ETH_Write16(identifier);
ETH_Write16(sequence);


ret = ETH_Copy(ipv4PayloadLength - sizeof(icmpHeader_t) - 4);
if(ret==SUCCESS)
{

cksm = sizeof(ethernetFrame_t) + sizeof(ipv4Header_t);
icmp_cksm_start = sizeof(ethernetFrame_t) + sizeof(ipv4Header_t);
cksm = ETH_TxComputeChecksum(icmp_cksm_start, ipv4PayloadLength, 0);
ETH_Insert((char *)&cksm,sizeof(cksm),sizeof(ethernetFrame_t) + sizeof(ipv4Header_t) + (size_t)(((char*)&((icmpHeader_t *)1)->checksum)-1));
ret = IPV4_Send(ipv4PayloadLength);
}
}
return ret;
}

error_msg ICMP_PortUnreachable(uint32_t srcIPAddress,uint32_t destIPAddress, uint16_t length)
{
error_msg ret = ERROR;
uint16_t cksm = 0;

if(srcIPAddress!=(ip_database_info.ipv4_myAddress))
{
return DEST_IP_NOT_MATCHED;
}

ret = IPv4_Start(destIPAddress, ICMP_TCPIP);
if(ret == SUCCESS)
{
ETH_Write16(DEST_PORT_UNREACHABLE);
ETH_Write16(0);
ETH_Write32(0);
ETH_SetReadPtr(IPV4_GetStartPosition());
ETH_Copy(sizeof(ipv4Header_t) + length);
cksm = ETH_TxComputeChecksum(sizeof(ethernetFrame_t) + sizeof(ipv4Header_t), sizeof(icmpHeader_t)+ sizeof(ipv4Header_t) + length, 0);
ETH_Insert((char *)&cksm,sizeof(cksm),sizeof(ethernetFrame_t) + sizeof(ipv4Header_t) + (size_t)(((char*)&((icmpHeader_t *)1)->checksum)-1));
ret = IPV4_Send(sizeof(icmpHeader_t)+sizeof(ipv4Header_t)+length);

}
return ret;
}

bool isPortUnreachable(uint16_t port)
{
if(portUnreachable==port)
return 1;
else
return 0;
}

void resetPortUnreachable(void)
{
portUnreachable = 0;
}
