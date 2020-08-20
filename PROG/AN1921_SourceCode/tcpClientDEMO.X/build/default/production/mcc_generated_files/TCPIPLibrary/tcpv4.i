
# 1 "mcc_generated_files/TCPIPLibrary/tcpv4.c"

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

# 15 "C:\Program Files\Microchip\xc8v220\pic\include\c90\stdbool.h"
typedef unsigned char bool;

# 6 "C:\Program Files\Microchip\xc8v220\pic\include\c90\stddef.h"
typedef int ptrdiff_t;

# 14 "C:\Program Files\Microchip\xc8v220\pic\include\c90\string.h"
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);




extern void * __builtin_memcpy(void *, const void *, size_t);
#pragma intrinsic(__builtin_memcpy)

# 36
extern char * strcat(char *, const char *);
extern char * strcpy(char *, const char *);
extern char * strncat(char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strdup(const char *);
extern char * strtok(char *, const char *);


extern int memcmp(const void *, const void *, size_t);
extern int strcmp(const char *, const char *);
extern int stricmp(const char *, const char *);
extern int strncmp(const char *, const char *, size_t);
extern int strnicmp(const char *, const char *, size_t);
extern void * memchr(const void *, int, size_t);
extern size_t strcspn(const char *, const char *);
extern char * strpbrk(const char *, const char *);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * stristr(const char *, const char *);
extern char * strerror(int);
extern size_t strlen(const char *);
extern char * strchr(const char *, int);
extern char * strichr(const char *, int);
extern char * strrchr(const char *, int);
extern char * strrichr(const char *, int);

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

# 61 "mcc_generated_files/TCPIPLibrary/tcpv4.h"
typedef enum
{
CLOSED = 0,
LISTEN, SYN_SENT, SYN_RECEIVED, ESTABLISHED, FIN_WAIT_1, FIN_WAIT_2, CLOSE_WAIT, CLOSING, LAST_ACK, TIME_WAIT,
}tcp_fsm_states_t;

typedef enum
{
CLOSE = 0,
ACTIVE_OPEN, PASIVE_OPEN, RCV_SYN, RCV_ACK, RCV_SYNACK, RCV_FIN, RCV_FINACK, RX_PACKET, RCV_RST, RCV_RSTACK,
RCV_PSHACK, TIMEOUT,
NOP
}tcpEvent_t;


typedef enum
{
NOT_A_SOCKET = 0,
SOCKET_CLOSED,
SOCKET_IN_PROGRESS,
SOCKET_CONNECTED,
SOCKET_CLOSING
} socketState_t;

typedef struct
{
uint32_t localIP;
uint16_t localPort;
uint32_t remoteIP;
uint16_t remotePort;
}tcpSocket_t;

typedef enum
{
NO_BUFF = 0,
RX_BUFF_IN_USE,
TX_BUFF_IN_USE
}tcpBufferState_t;

typedef struct
{
uint16_t localPort;

uint32_t destIP;
uint16_t destPort;

uint32_t remoteSeqno;
uint32_t remoteAck;

uint32_t localSeqno;
uint32_t localLastAck;

uint16_t remoteWnd;
uint16_t localWnd;

uint16_t mss;

uint8_t *rxBufferStart;
uint8_t *rxBufferPtr;
tcpBufferState_t rxBufState;

uint8_t *txBufferStart;
uint8_t *txBufferPtr;
uint16_t bytesToSend;
tcpBufferState_t txBufState;
uint16_t bytesSent;
bool payloadSave;

tcp_fsm_states_t fsmState;
tcpEvent_t connectionEvent;


void *nextTCB;
void *prevTCB;

uint16_t timeout;
uint16_t timeoutReloadValue;
uint8_t timeoutsCount;
uint8_t flags;

socketState_t socketState;
}tcpTCB_t;

typedef enum
{
TCP_EOP = 0u,
TCP_NOP = 1u,
TCP_MSS = 2u,

# 195
}tcp_options_t;

# 211
void TCP_Init(void);

# 227
tcbError_t TCP_SocketInit(tcpTCB_t *tcb_ptr);

# 242
tcbError_t TCP_SocketRemove(tcpTCB_t *tcb_ptr);

# 256
socketState_t TCP_SocketPoll(tcpTCB_t *tcbPtr);

# 273
bool TCP_Bind(tcpTCB_t *tcbPtr, uint16_t port);

# 291
bool TCP_Listen(tcpTCB_t *tcbPtr);

# 307
bool TCP_Connect(tcpTCB_t *tcbPtr, sockaddr_in_t *srvaddr);

# 321
bool TCP_Close(tcpTCB_t *tcbPtr);

# 336
bool TCP_Send(tcpTCB_t *tcbPtr, uint8_t *data, uint16_t dataLen);

# 351
bool TCP_SendDone(tcpTCB_t *tcbPtr);

# 370
bool TCP_InsertRxBuffer(tcpTCB_t *tcbPtr, uint8_t *data, uint16_t dataLen);

# 384
int16_t TCP_GetReceivedData(tcpTCB_t *tcbPtr);

# 397
int16_t TCP_GetRxLength(tcpTCB_t *tcbPtr);

# 409
void TCP_Update(void);

# 58 "mcc_generated_files/TCPIPLibrary/network.h"
void Network_Init(void);
void Network_Read(void);
void Network_Manage(void);
void Network_WaitForLink(void);
void timersInit();

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

# 52 "mcc_generated_files/TCPIPLibrary/tcpv4.c"
tcpTCB_t *tcbList;
socklistsize_t tcbListSize;
tcpTCB_t *currentTCB;

static tcpHeader_t tcpHeader;
static uint16_t nextAvailablePort;
static uint32_t nextSequenceNumber;

static uint32_t receivedRemoteAddress;
static uint16_t rcvPayloadLen;
static uint16_t tcpMss = 536;

static bool TCP_FiniteStateMachine(void);

# 74
static void TCB_Insert(tcpTCB_t *ptr)
{


if(tcbList != (0))
{

tcbList->prevTCB = ptr;
}
ptr->nextTCB = tcbList;
tcbList = ptr;
ptr->prevTCB = (0);
tcbListSize ++;
}

# 98
static void TCB_Remove(tcpTCB_t *ptr)
{
if(tcbListSize > 1)
{

if(ptr->prevTCB == (0))
{
tcbList = ptr->nextTCB;
((tcpTCB_t *)(ptr->nextTCB))->prevTCB = (0);
} else
{
((tcpTCB_t *)(ptr->prevTCB))->nextTCB = ptr->nextTCB;
((tcpTCB_t *)(ptr->nextTCB))->prevTCB = ptr->prevTCB;
}
tcbListSize --;
}
else if(tcbListSize==1)
{
tcbList = (0);
}
}

# 128
static void TCB_Reset(tcpTCB_t *tcbPtr)
{
tcbPtr->destIP = 0;
tcbPtr->destPort = 0;
tcbPtr->localSeqno = 0;
tcbPtr->localLastAck = 0;
tcbPtr->remoteSeqno = 0;
tcbPtr->remoteAck = 0;
tcbPtr->remoteWnd = 0;

tcbPtr->timeout = 0;
tcbPtr->timeoutReloadValue = 0;
tcbPtr->timeoutsCount = 0;
tcbPtr->flags = 0;

tcbPtr->localPort = 0;
tcbPtr->bytesSent = 0;
tcbPtr->payloadSave = 0;
tcbPtr->socketState = SOCKET_CLOSING;
}

# 158
static bool TCB_Check(tcpTCB_t *ptr)
{
tcpTCB_t *tcbPtr;
bool ret = 0;
socklistsize_t count = 0;

if((tcbList != (0)) && (ptr != (0)))
{

tcbPtr = tcbList;
while((tcbPtr != (0)) && (count < tcbListSize))
{
if (tcbPtr == ptr)
{
ret = 1;
break;
}
else
{
tcbPtr = tcbPtr->nextTCB;
count ++;
}
}
}
return ret;
}

# 196
static bool TCP_Snd(tcpTCB_t *tcbPtr)
{
bool ret = 0;
tcpHeader_t txHeader;
uint16_t payloadLength;
uint16_t cksm;
uint16_t tcpDataLength;
uint8_t *data;

txHeader.sourcePort = ((((uint16_t)tcbPtr->localPort & (uint16_t)0xFF00) >> 8) | (((uint16_t)tcbPtr->localPort & (uint16_t)0x00FF) << 8));
txHeader.destPort = ((((uint16_t)tcbPtr->destPort & (uint16_t)0xFF00) >> 8) | (((uint16_t)tcbPtr->destPort & (uint16_t)0x00FF) << 8));

txHeader.sequenceNumber = ((((uint32_t)tcbPtr->localSeqno&(uint32_t)0xff000000) >> 24) | (((uint32_t)tcbPtr->localSeqno&(uint32_t)0x00ff0000) >> 8) | (((uint32_t)tcbPtr->localSeqno&(uint32_t)0x0000ff00) << 8) | (((uint32_t)tcbPtr->localSeqno&(uint32_t)0x000000ff) << 24) );

txHeader.ackNumber = ((((uint32_t)tcbPtr->remoteAck&(uint32_t)0xff000000) >> 24) | (((uint32_t)tcbPtr->remoteAck&(uint32_t)0x00ff0000) >> 8) | (((uint32_t)tcbPtr->remoteAck&(uint32_t)0x0000ff00) << 8) | (((uint32_t)tcbPtr->remoteAck&(uint32_t)0x000000ff) << 24) );

txHeader.ns = 0;
txHeader.reserved = 0;
txHeader.dataOffset = 5;
txHeader.windowSize = ((((uint16_t)tcbPtr->localWnd & (uint16_t)0xFF00) >> 8) | (((uint16_t)tcbPtr->localWnd & (uint16_t)0x00FF) << 8));
txHeader.checksum = 0;
txHeader.urgentPtr = 0;

if ((tcbPtr->flags) & (0x02U | 0x04U))
{
tcpDataLength = 0;
}
else if(tcbPtr->payloadSave == 1)
{
tcpDataLength = 0;
}else
{
tcpDataLength = tcbPtr->bytesSent;

if (tcpDataLength != 0)
{
if(tcbPtr->remoteWnd == 0)
{
tcbPtr->remoteWnd = 1;
}
if(tcpDataLength > tcbPtr->remoteWnd)
{
tcpDataLength = tcbPtr->remoteWnd;
}

if(tcpDataLength > tcbPtr->mss)
{
tcpDataLength = tcbPtr->mss;
}
data = (uint8_t *)tcbPtr->txBufferStart;


tcbPtr->txBufferPtr = tcbPtr->txBufferPtr + tcpDataLength;
tcbPtr->bytesToSend = tcbPtr->bytesSent - tcpDataLength;

if (tcbPtr->bytesToSend == 0)
{
tcbPtr->flags = tcbPtr->flags | 0x08U;
}
}
}

txHeader.flags = tcbPtr->flags;
payloadLength = sizeof(tcpHeader_t) + tcpDataLength;

ret = IPv4_Start(tcbPtr->destIP, TCP_TCPIP);
if (ret == SUCCESS)
{
ETH_WriteBlock((uint8_t *) &txHeader, sizeof(tcpHeader_t));

if (tcpDataLength > 0)
{
ETH_WriteBlock( data, tcpDataLength);
}

cksm = payloadLength + TCP_TCPIP;

cksm = ETH_TxComputeChecksum(sizeof(ethernetFrame_t) + sizeof(ipv4Header_t) - 8, payloadLength + 8, cksm);
ETH_Insert((char *)&cksm, 2, sizeof(ethernetFrame_t) + sizeof(ipv4Header_t) + (size_t)(((char*)&((tcpHeader_t *)1)->checksum)-1));

ret = IPV4_Send(payloadLength);

}



if (ret != SUCCESS)
{


tcbPtr->timeoutsCount = tcbPtr->timeoutsCount + 1;

if (tcbPtr->timeout == 0)
{
tcbPtr->timeout = ((unsigned long)1*2);
}
}
else
{

tcbPtr->localSeqno = tcbPtr->localSeqno + tcpDataLength;
}

return ret;
}

# 314
bool TCP_PayloadSave(uint16_t len)
{
bool ret = 0;
uint16_t buffer_size;


if (currentTCB->rxBufState == RX_BUFF_IN_USE)
{

if (currentTCB->localWnd >= len)
{
buffer_size = len;
}else
{
buffer_size = currentTCB->localWnd;
}

ETH_ReadBlock((uint8_t*)currentTCB->rxBufferPtr, buffer_size);
currentTCB->rxBufferPtr = currentTCB->rxBufferPtr + buffer_size;


currentTCB->localWnd = currentTCB->localWnd - buffer_size;
currentTCB->remoteAck = currentTCB->remoteSeqno + buffer_size;


currentTCB->flags = 0x10U;
currentTCB->payloadSave = 1;
TCP_Snd(currentTCB);
currentTCB->payloadSave = 0;
ret = 1;
}
return ret;
}

# 362
static bool TCP_ParseTCPOptions(void)
{
uint8_t opt;
uint16_t tcpOptionsSize;
bool ret;

ret = 0;

tcpOptionsSize = (uint16_t)((tcpHeader.dataOffset << 2) - sizeof(tcpHeader_t));

if (tcpOptionsSize > 0)
{


tcpMss = 536;

if(tcpHeader.syn)
{

while(tcpOptionsSize--)
{
opt = ETH_Read8();
switch (opt)
{
case TCP_EOP:

if (tcpOptionsSize)
{

ETH_Dump(tcpOptionsSize);
tcpOptionsSize = 0;
}
ret = 1;
break;
case TCP_NOP:

break;
case TCP_MSS:
if (tcpOptionsSize >= 3)
{
opt = ETH_Read8();
if (opt == 0x04)
{

tcpMss = ETH_Read16();

tcpOptionsSize = tcpOptionsSize - 3;


if (tcpMss > 1460u)
{
tcpMss = 1460u;
}

ret = 1;
}else
{


tcpOptionsSize = 0;
ret = 0;
}
}else
{

tcpOptionsSize = 0;
ret = 0;
}
break;
default:
opt = ETH_Read8();
tcpOptionsSize--;

if (opt > 1)
{

opt = opt - 2;
if (opt <= tcpOptionsSize)
{

ETH_Dump(opt);
tcpOptionsSize = tcpOptionsSize - opt;
ret = 1;
}else
{

tcpOptionsSize = 0;
ret = 0;
}
}else
{


tcpOptionsSize = 0;
ret = 0;
}
break;
}
}
}else
{
ETH_Dump(tcpOptionsSize);
ret = 1;
}
}else
{
ret = 1;
}

return ret;
}

# 486
void TCP_Recv(uint32_t remoteAddress, uint16_t length)
{
tcpTCB_t *tcbPtr;
socklistsize_t count = 0;

tcbPtr = (0);

receivedRemoteAddress = 0;
rcvPayloadLen = 0;

ETH_ReadBlock((char *)&tcpHeader,sizeof(tcpHeader_t));

currentTCB = (0);


if ((tcpHeader.destPort != 0) && (tcpHeader.sourcePort != 0))
{
tcpHeader.sourcePort = ((((uint16_t)tcpHeader.sourcePort & (uint16_t)0xFF00) >> 8) | (((uint16_t)tcpHeader.sourcePort & (uint16_t)0x00FF) << 8));
tcpHeader.destPort = ((((uint16_t)tcpHeader.destPort & (uint16_t)0xFF00) >> 8) | (((uint16_t)tcpHeader.destPort & (uint16_t)0x00FF) << 8));


tcbPtr = tcbList;
while((tcbPtr != (0)) && (count < tcbListSize))
{
if (tcpHeader.destPort == tcbPtr->localPort)
{
currentTCB = tcbPtr;
break;
}
else
{
tcbPtr = tcbPtr->nextTCB;
count ++;
}
}

if (currentTCB != (0))
{
if((tcpHeader.sourcePort == currentTCB->destPort) ||
(currentTCB->destIP == 0))
{


receivedRemoteAddress = remoteAddress;
rcvPayloadLen = length - (uint16_t)(tcpHeader.dataOffset << 2);


if (TCP_ParseTCPOptions() == 1)
{


if(tcpHeader.syn)
{
if(tcpHeader.ack)
{
currentTCB->connectionEvent = RCV_SYNACK;
} else
{
currentTCB->connectionEvent = RCV_SYN;
}
} else if(tcpHeader.fin)
{
if(tcpHeader.ack)
{
currentTCB->connectionEvent = RCV_FINACK;
} else
{
currentTCB->connectionEvent = RCV_FIN;
}
} else if(tcpHeader.rst)
{
if(tcpHeader.ack)
{
currentTCB->connectionEvent = RCV_RSTACK;
} else
{
currentTCB->connectionEvent = RCV_RST;
}
} else if(tcpHeader.ack)
{
currentTCB->connectionEvent = RCV_ACK;
}
else
{
}

tcpHeader.ackNumber = ((((uint32_t)tcpHeader.ackNumber&(uint32_t)0xff000000) >> 24) | (((uint32_t)tcpHeader.ackNumber&(uint32_t)0x00ff0000) >> 8) | (((uint32_t)tcpHeader.ackNumber&(uint32_t)0x0000ff00) << 8) | (((uint32_t)tcpHeader.ackNumber&(uint32_t)0x000000ff) << 24) );
tcpHeader.sequenceNumber = ((((uint32_t)tcpHeader.sequenceNumber&(uint32_t)0xff000000) >> 24) | (((uint32_t)tcpHeader.sequenceNumber&(uint32_t)0x00ff0000) >> 8) | (((uint32_t)tcpHeader.sequenceNumber&(uint32_t)0x0000ff00) << 8) | (((uint32_t)tcpHeader.sequenceNumber&(uint32_t)0x000000ff) << 24) );

TCP_FiniteStateMachine();
}else
{
}
}
}
}
}

# 596
static bool TCP_FiniteStateMachine(void)
{
uint16_t notAckBytes;
bool ret = 0;

tcp_fsm_states_t nextState = currentTCB->fsmState;
tcpEvent_t event = currentTCB->connectionEvent;
if(isPortUnreachable(currentTCB->localPort))
{
event = RCV_RST;
resetPortUnreachable();
}
switch (currentTCB->fsmState)
{
case LISTEN:
switch (event)
{
case RCV_SYN:


currentTCB->destIP = receivedRemoteAddress;
currentTCB->destPort = tcpHeader.sourcePort;


currentTCB->localLastAck = 0;

currentTCB->remoteSeqno = tcpHeader.sequenceNumber;
currentTCB->remoteAck = currentTCB->remoteSeqno + 1;


currentTCB->remoteWnd = ((((uint16_t)tcpHeader.windowSize & (uint16_t)0xFF00) >> 8) | (((uint16_t)tcpHeader.windowSize & (uint16_t)0x00FF) << 8));
currentTCB->mss = tcpMss;


currentTCB->flags = 0x02U | 0x10U;
currentTCB->timeout = ((unsigned long)1*2);
currentTCB->timeoutReloadValue = ((unsigned long)1*2);
currentTCB->timeoutsCount = (3u);

TCP_Snd(currentTCB);
nextState = SYN_RECEIVED;
break;
case CLOSE:
nextState = CLOSE;
TCB_Reset(currentTCB);
break;
default:

break;
}
break;
case SYN_SENT:
switch (event)
{
case RCV_SYN:

currentTCB->remoteSeqno = tcpHeader.sequenceNumber;
currentTCB->remoteAck = tcpHeader.sequenceNumber + 1;


currentTCB->remoteWnd = ((((uint16_t)tcpHeader.windowSize & (uint16_t)0xFF00) >> 8) | (((uint16_t)tcpHeader.windowSize & (uint16_t)0x00FF) << 8));
currentTCB->mss = tcpMss;


currentTCB->timeout = ((unsigned long)1*2);
currentTCB->timeoutReloadValue = ((unsigned long)1*2);
currentTCB->timeoutsCount = (3u);
currentTCB->flags = 0x02U | 0x10U;

TCP_Snd(currentTCB);


nextState = SYN_RECEIVED;
break;
case RCV_SYNACK:

currentTCB->timeout = 0;

if ((currentTCB->localSeqno + 1) == tcpHeader.ackNumber)
{

currentTCB->localSeqno = currentTCB->localSeqno + 1;
currentTCB->flags = 0x10U;


currentTCB->remoteSeqno = tcpHeader.sequenceNumber;

currentTCB->remoteAck = tcpHeader.sequenceNumber + 1;

currentTCB->remoteWnd = ((((uint16_t)tcpHeader.windowSize & (uint16_t)0xFF00) >> 8) | (((uint16_t)tcpHeader.windowSize & (uint16_t)0x00FF) << 8));
currentTCB->mss = tcpMss;

if(TCP_Snd(currentTCB))
{
nextState = ESTABLISHED;
currentTCB->socketState = SOCKET_CONNECTED;
}
}
else
{

currentTCB->localSeqno = tcpHeader.ackNumber;
currentTCB->flags = 0x04U | 0x10U;
if(TCP_Snd(currentTCB))
{
nextState = CLOSE;
TCB_Reset(currentTCB);
}
}
break;
case RCV_ACK:

currentTCB->timeout = 0;

if ((currentTCB->localSeqno + 1) == tcpHeader.ackNumber)
{

currentTCB->localSeqno = currentTCB->localSeqno + 1;
currentTCB->flags = 0x10U;


currentTCB->remoteSeqno = tcpHeader.sequenceNumber;
currentTCB->remoteAck = tcpHeader.sequenceNumber + 1;

currentTCB->remoteWnd = ((((uint16_t)tcpHeader.windowSize & (uint16_t)0xFF00) >> 8) | (((uint16_t)tcpHeader.windowSize & (uint16_t)0x00FF) << 8));
currentTCB->mss = tcpMss;

nextState = ESTABLISHED;
currentTCB->socketState = SOCKET_CONNECTED;
}
else
{

currentTCB->localSeqno = tcpHeader.ackNumber;
currentTCB->flags = 0x04U;
if(TCP_Snd(currentTCB))
{
nextState = CLOSE;
TCB_Reset(currentTCB);
}
}
break;
case CLOSE:

nextState = CLOSED;
TCB_Reset(currentTCB);
break;
case TIMEOUT:


if (currentTCB->timeoutsCount)
{
if(TCP_Snd(currentTCB))
{
if (currentTCB->flags & 0x04U)
{
nextState = CLOSE;
TCB_Reset(currentTCB);
}else
if(currentTCB->flags & 0x10U)
{
nextState = ESTABLISHED;
currentTCB->socketState = SOCKET_CONNECTED;
}
}
}else
{

currentTCB->flags = 0x04U;
if(TCP_Snd(currentTCB))
{
nextState = CLOSE;
TCB_Reset(currentTCB);
}
}
break;
case RCV_RST:
case RCV_RSTACK:

nextState = CLOSED;
TCB_Reset(currentTCB);
break;
default:

break;
}
break;
case SYN_RECEIVED:
switch (event)
{
case RCV_SYNACK:
if (currentTCB->localPort == tcpHeader.destPort)
{

currentTCB->timeout = 0;



if ((currentTCB->destIP == receivedRemoteAddress) && (currentTCB->destPort == tcpHeader.sourcePort))
if ((currentTCB->localSeqno + 1) == tcpHeader.ackNumber)

nextState = ESTABLISHED;
currentTCB->socketState = SOCKET_CONNECTED;
}
break;
case RCV_ACK:



if ((currentTCB->destIP == receivedRemoteAddress) && (currentTCB->destPort == tcpHeader.sourcePort))
{


if (currentTCB->remoteAck == tcpHeader.sequenceNumber)
{

if ((currentTCB->localSeqno + 1) == tcpHeader.ackNumber)
{
currentTCB->localSeqno = currentTCB->localSeqno + 1;

currentTCB->timeout = 0;

nextState = ESTABLISHED;
currentTCB->socketState = SOCKET_CONNECTED;
}
}
}
break;
case CLOSE:

currentTCB->timeout = 0;

currentTCB->flags = 0x01U;
currentTCB->timeout = ((unsigned long)1*2);
currentTCB->timeoutReloadValue = ((unsigned long)1*2);
currentTCB->timeoutsCount = (5u);

nextState = FIN_WAIT_1;
TCP_Snd(currentTCB);
break;
case RCV_RSTACK:
case RCV_RST:


if (currentTCB->localPort == tcpHeader.destPort)
{
if (currentTCB->remoteAck == tcpHeader.sequenceNumber)
{
currentTCB->destIP = 0;
currentTCB->destPort = 0;
currentTCB->localSeqno = 0;
currentTCB->localLastAck = 0;
currentTCB->remoteSeqno = 0;
currentTCB->remoteAck = 0;
currentTCB->remoteWnd = 0;

currentTCB->mss = 1460u;

nextState = LISTEN;
}
}
break;
case TIMEOUT:
if (currentTCB->timeoutsCount)
{
TCP_Snd(currentTCB);
}
else
{

currentTCB->flags = 0x04U;
if(TCP_Snd(currentTCB))
{
currentTCB->destIP = 0;
currentTCB->destPort = 0;
currentTCB->localSeqno = 0;
currentTCB->localLastAck = 0;
currentTCB->remoteSeqno = 0;
currentTCB->remoteAck = 0;
currentTCB->remoteWnd = 0;

currentTCB->mss = 1460u;
nextState = LISTEN;
}
}
break;
default:

break;
}
break;
case ESTABLISHED:
switch (event)
{
case RCV_ACK:
if (currentTCB->destIP == receivedRemoteAddress)
{



if (currentTCB->remoteAck == tcpHeader.sequenceNumber)
{



if (currentTCB->localLastAck < tcpHeader.ackNumber)
{

if ((currentTCB->localSeqno + 1) >= tcpHeader.ackNumber)
{
notAckBytes = currentTCB->localSeqno - tcpHeader.ackNumber;


currentTCB->txBufferPtr = currentTCB->txBufferPtr - notAckBytes;
currentTCB->bytesToSend = currentTCB->bytesToSend + notAckBytes;

currentTCB->localLastAck = tcpHeader.ackNumber - 1;
currentTCB->localSeqno = tcpHeader.ackNumber;


if(currentTCB->bytesToSend == 0)
{
if (currentTCB->txBufState == TX_BUFF_IN_USE)
{
currentTCB->txBufState = NO_BUFF;

currentTCB->timeout = 0;
}
}
else
{
currentTCB->bytesSent = currentTCB->bytesToSend;
TCP_Snd(currentTCB);
}



if(rcvPayloadLen > 0)
{
currentTCB->remoteSeqno = tcpHeader.sequenceNumber;


TCP_PayloadSave(rcvPayloadLen);
}
}else
{


}
}
}
}
break;
case CLOSE:
currentTCB->flags = 0x01U;
nextState = FIN_WAIT_1;
TCP_Snd(currentTCB);
break;
case RCV_FIN:
break;
case RCV_FINACK:
currentTCB->bytesSent = 0;


currentTCB->localSeqno = tcpHeader.ackNumber;
currentTCB->remoteAck = currentTCB->remoteAck + 1;

currentTCB->socketState = SOCKET_CLOSING;
currentTCB->timeout = ((unsigned long)1*2);
currentTCB->timeoutReloadValue = ((unsigned long)1*2);
currentTCB->timeoutsCount = (5u);

currentTCB->flags = 0x01U | 0x10U;

nextState = LAST_ACK;
TCP_Snd(currentTCB);
break;
case RCV_RST:
case RCV_RSTACK:
currentTCB->flags = 0x04U;
TCP_Snd(currentTCB);
nextState = CLOSED;
TCB_Reset(currentTCB);
break;
case TIMEOUT:
if (currentTCB->timeoutsCount)
{
TCP_Snd(currentTCB);
}else
{

currentTCB->flags = 0x04U;
if(TCP_Snd(currentTCB))
{
nextState = CLOSE;
TCB_Reset(currentTCB);
}
}
break;
default:
break;
}
break;
case FIN_WAIT_1:
switch (event)
{
case RCV_FIN:
currentTCB->flags = 0x10U;
if(TCP_Snd(currentTCB))
{
nextState = CLOSING;
}
break;
case RCV_ACK:

currentTCB->timeout = ((unsigned long)1*2);
currentTCB->timeoutsCount = 1;
nextState = FIN_WAIT_2;
break;
case RCV_FINACK:
currentTCB->flags = 0x10U;
if(TCP_Snd(currentTCB))
{
nextState = TIME_WAIT;
}
break;
case TIMEOUT:
if (currentTCB->timeoutsCount)
{
TCP_Snd(currentTCB);
}else
{

currentTCB->flags = 0x04U;
if(TCP_Snd(currentTCB))
{
nextState = CLOSE;
TCB_Reset(currentTCB);
}
}
break;
default:
break;
}
break;
case FIN_WAIT_2:
switch (event)
{
case RCV_FIN:
if(TCP_Snd(currentTCB))
{
nextState = TIME_WAIT;
}
break;
case TIMEOUT:
if (currentTCB->timeoutsCount)
{
TCP_Snd(currentTCB);
}else
{

currentTCB->flags = 0x04U;
if(TCP_Snd(currentTCB))
{
nextState = CLOSE;
TCB_Reset(currentTCB);
}
}
break;
default:
break;
}
break;
case CLOSE_WAIT:

break;
case CLOSING:
switch (event)
{
case RCV_ACK:
nextState = TIME_WAIT;
break;
default:
break;
}
break;
case LAST_ACK:

switch (event)
{
case RCV_FINACK:
case RCV_ACK:
if ((currentTCB->destIP == receivedRemoteAddress) &&
(currentTCB->destPort == tcpHeader.sourcePort))
{
nextState = CLOSED;
TCB_Reset(currentTCB);
}
break;
case TIMEOUT:
if (currentTCB->timeoutsCount)
{
TCP_Snd(currentTCB);
}else
{

currentTCB->flags = 0x04U;
if(TCP_Snd(currentTCB))
{
nextState = CLOSE;
TCB_Reset(currentTCB);
}
}
default:
break;
}
break;
case TIME_WAIT:
nextState = CLOSED;
TCB_Reset(currentTCB);
break;
case CLOSED:
switch (event)
{
case ACTIVE_OPEN:

currentTCB->timeout = ((unsigned long)1*2);
currentTCB->timeoutReloadValue = ((unsigned long)1*2);
currentTCB->timeoutsCount = (3u);
currentTCB->flags = 0x02U;
TCP_Snd(currentTCB);
nextState = SYN_SENT;
ret = 1;
break;
case PASIVE_OPEN:
currentTCB->destIP = 0;
currentTCB->destPort = 0;
nextState = LISTEN;
ret = 1;
break;
default:
break;
}
break;
default:
break;
}
currentTCB->connectionEvent = NOP;
currentTCB->fsmState = nextState;
return ret;
}


void TCP_Init(void)
{
tcbList = (0);
tcbListSize = 0;
nextAvailablePort = (1024u);
nextSequenceNumber = 0;
}

tcbError_t TCP_SocketInit(tcpTCB_t *tcbPtr)
{
tcbError_t ret = TCB_ERROR;


if(TCB_Check(tcbPtr) == 0)
{
TCB_Reset(tcbPtr);

tcbPtr->localWnd = 0;
tcbPtr->mss = 1460u;
tcbPtr->fsmState = CLOSED;
tcbPtr->connectionEvent = NOP;
tcbPtr->rxBufferStart = (0);
tcbPtr->rxBufState = NO_BUFF;
tcbPtr->txBufferStart = (0);
tcbPtr->txBufferPtr = (0);
tcbPtr->bytesToSend = 0;
tcbPtr->bytesSent = 0;
tcbPtr->payloadSave = 0;
tcbPtr->txBufState = NO_BUFF;
tcbPtr->socketState = SOCKET_CLOSED;

TCB_Insert(tcbPtr);
ret = TCB_NO_ERROR;
}
return ret;
}

tcbError_t TCP_SocketRemove(tcpTCB_t *tcbPtr)
{
tcbError_t ret = TCB_ERROR;


if(TCP_SocketPoll(tcbPtr) == SOCKET_CLOSING)
{
TCB_Remove(tcbPtr);
ret = TCB_NO_ERROR;
}
return ret;
}

socketState_t TCP_SocketPoll(tcpTCB_t *socket_ptr)
{
socketState_t tmpSocketState;

tmpSocketState = NOT_A_SOCKET;

if(TCB_Check(socket_ptr))
{
tmpSocketState = socket_ptr->socketState;
}

return tmpSocketState;
}


bool TCP_Bind(tcpTCB_t *tcbPtr, uint16_t port)
{
bool ret = 0;

if (TCB_Check(tcbPtr))
{
tcbPtr->localPort = port;
ret = 1;
}
return ret;
}


bool TCP_Listen(tcpTCB_t *tcbPtr)
{
bool ret = 0;

if (TCB_Check(tcbPtr))
{
tcbPtr->connectionEvent = PASIVE_OPEN;
tcbPtr->socketState = SOCKET_IN_PROGRESS;
tcbPtr->localSeqno = nextSequenceNumber;
currentTCB = tcbPtr;
if (tcbPtr->localPort == 0)
{
tcbPtr->localPort = nextAvailablePort++;
}
ret = TCP_FiniteStateMachine();
}
return ret;
}


bool TCP_Connect(tcpTCB_t *tcbPtr, sockaddr_in_t *srvaddr)
{
bool ret = 0;

if (TCP_SocketPoll(tcbPtr) == SOCKET_CLOSED)
{
tcbPtr->destIP = srvaddr->addr.s_addr;
tcbPtr->destPort = srvaddr->port;
if(tcbPtr->localPort == 0)
{

tcbPtr->localPort = nextAvailablePort++;
}

tcbPtr->fsmState = CLOSED;
tcbPtr->socketState = SOCKET_IN_PROGRESS;
tcbPtr->localSeqno = nextSequenceNumber;
tcbPtr->connectionEvent = ACTIVE_OPEN;

currentTCB = tcbPtr;
ret = TCP_FiniteStateMachine();
}

return ret;
}


bool TCP_Close(tcpTCB_t *tcbPtr)
{
bool ret = 0;

if (TCB_Check(tcbPtr))
{
tcbPtr->connectionEvent = CLOSE;

tcbPtr->socketState = SOCKET_CLOSING;


currentTCB = tcbPtr;
ret = TCP_FiniteStateMachine();
}
return ret;
}


bool TCP_Send(tcpTCB_t *tcbPtr, uint8_t *data, uint16_t dataLen)
{
bool ret = 0;

if (TCP_SocketPoll(tcbPtr) == SOCKET_CONNECTED)
{
if (tcbPtr->txBufState == NO_BUFF)
{
if (data != (0))
{
tcbPtr->txBufferStart = data;
tcbPtr->txBufferPtr = tcbPtr->txBufferStart;
tcbPtr->bytesToSend = dataLen;
tcbPtr->txBufState = TX_BUFF_IN_USE;
tcbPtr->bytesSent = dataLen;

tcbPtr->timeoutReloadValue = ((unsigned long)1*2);
tcbPtr->timeoutsCount = (5u);

tcbPtr->flags = 0x10U;

TCP_Snd(tcbPtr);
ret = 1;
}
}
}
return ret;
}


bool TCP_SendDone(tcpTCB_t *tcbPtr)
{
bool ret = 0;

if(TCB_Check(tcbPtr))
{
if (tcbPtr->txBufState == NO_BUFF)
{
ret = 1;
}
}
return ret;
}

bool TCP_InsertRxBuffer(tcpTCB_t *tcbPtr, uint8_t *data, uint16_t data_len)
{
bool ret = 0;

if (TCB_Check(tcbPtr))
{
if (tcbPtr->rxBufState == NO_BUFF)
{
if (data != (0))
{
tcbPtr->rxBufferStart = data;
tcbPtr->rxBufferPtr = tcbPtr->rxBufferStart;
tcbPtr->localWnd = data_len;
tcbPtr->rxBufState = RX_BUFF_IN_USE;
ret = 1;
}
}
}
return ret;
}

int16_t TCP_GetReceivedData(tcpTCB_t *tcbPtr)
{
int16_t ret = 0;

if (TCB_Check(tcbPtr))
{
if (tcbPtr->rxBufState == RX_BUFF_IN_USE)
{
ret = tcbPtr->rxBufferPtr - tcbPtr->rxBufferStart;

if (ret != 0)
{
tcbPtr->localWnd = 0;
tcbPtr->rxBufState = NO_BUFF;
}
}
}
return ret;
}

int16_t TCP_GetRxLength(tcpTCB_t *tcbPtr)
{
int16_t ret = 0;

if (TCB_Check(tcbPtr))
{
if (tcbPtr->rxBufState == RX_BUFF_IN_USE)
{
ret = tcbPtr->rxBufferPtr - tcbPtr->rxBufferStart;
}
}
return ret;
}

void TCP_Update(void)
{
tcpTCB_t *tcbPtr;
tcbPtr = (0);
int count = 0;



nextSequenceNumber++;


nextAvailablePort = nextAvailablePort + 1;
if (nextAvailablePort < (1024u))
{
nextAvailablePort = (1024u);
}


tcbPtr = tcbList;
while((tcbPtr != (0)) && (count < tcbListSize))
{
if (tcbPtr->timeout > 0)
{
tcbPtr->timeout = tcbPtr->timeout - 1;

if (tcbPtr->timeout == 0)
{



if (tcbPtr->timeoutsCount >= 0)
{

if (tcbPtr->connectionEvent == NOP)
{
tcbPtr->timeout = tcbPtr->timeoutReloadValue;

if (tcbPtr->timeoutsCount != 0)
tcbPtr->timeoutsCount = tcbPtr->timeoutsCount - 1;
tcbPtr->connectionEvent = TIMEOUT;
currentTCB = tcbPtr;
TCP_FiniteStateMachine();
}
}
}
}
tcbPtr = tcbPtr->nextTCB;
count ++;
}
}

