
# 1 "mcc_generated_files/TCPIPLibrary/lfsr.c"

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

# 5 "mcc_generated_files/TCPIPLibrary/lfsr.h"
typedef uint8_t lfsr_t;
int lfsr_getSequenceCount(void);
lfsr_t lfsr_getSequence(void);
void lfsr_reset(void);
void lfsr_setSequence(int s);
lfsr_t lfsr(void);

# 6 "mcc_generated_files/TCPIPLibrary/lfsr.c"
char sequenceIndex = 0;
const lfsr_t xorSequences[] = {0x41,0x44,0x47,0x48,0x4E,0x53,0x55,0x5C,0x5F,0x60,0x65,0x69,0x6A,0x72,0x77,0x78,0x7B,0x7E};
lfsr_t xor_mask = 0x41;
lfsr_t lfsr_value = 0x40;

lfsr_t lfsr_getSequence(void)
{
return xorSequences[sequenceIndex];
}

int lfsr_getSequenceCount(void)
{
return sizeof(xorSequences)/sizeof(*xorSequences);
}

void lfsr_reset(void)
{
lfsr_value = 0x40;
}

void lfsr_setSequence(int s)
{
s %= sizeof(xorSequences)/sizeof(*xorSequences);
xor_mask = xorSequences[s];
}

lfsr_t lfsr(void)
{
char lsb = lfsr_value & 1;
lfsr_value >>= 1;
if (lsb)
lfsr_value ^= xor_mask;
return lfsr_value & 0x7f;
}
