
#ifndef IOMAP_H_
#define IOMAP_H_

// FIFO_AB_0 -------------------------------------------------------------------
#define FIFO_AB_0_ID 0
#define FIFO_AB_0_WRITE 0x08011164
#define FIFO_AB_0_READ 0x08011158
#define FIFO_AB_0_CSR 0x080110a0
#define FIFO_AB_0_SIZE 128-3

// FIFO_AB_1 -------------------------------------------------------------------
#define FIFO_AB_1_ID 1
#define FIFO_AB_1_WRITE 0x08011160
#define FIFO_AB_1_READ 0x08011154
#define FIFO_AB_1_CSR 0x08011080
#define FIFO_AB_1_SIZE 128-3

// FIFO_AB_2 -------------------------------------------------------------------
#define FIFO_AB_2_ID 2
#define FIFO_AB_2_WRITE 0x0801115c
#define FIFO_AB_2_READ 0x08011150
#define FIFO_AB_2_CSR 0x08011060
#define FIFO_AB_2_SIZE 128-3

// FIFO_AD -------------------------------------------------------------------
#define FIFO_AD_ID 3
#define FIFO_AD_WRITE 0x0801114c
#define FIFO_AD_READ 0x08011148
#define FIFO_AD_CSR 0x08011040
#define FIFO_AD_SIZE 32-3

// FIFO_AE -------------------------------------------------------------------
#define FIFO_AE_ID 4
#define FIFO_AE_WRITE 0x08011144
#define FIFO_AE_READ 0x08011140
#define FIFO_AE_CSR 0x08011020
#define FIFO_AE_SIZE 32-3

// FIFO_AF -------------------------------------------------------------------
#define FIFO_AF_ID 5
#define FIFO_AF_WRITE 0x0801113c
#define FIFO_AF_READ 0x08011138
#define FIFO_AF_CSR 0x08011000
#define FIFO_AF_SIZE 32-3




// FIFO_BC -------------------------------------------------------------------
#define FIFO_BC_ID 6
#define FIFO_BC_WRITE 0x080110dc
#define FIFO_BC_READ 0x080110d8
#define FIFO_BC_CSR 0x08011000
#define FIFO_BC_SIZE 256-3

// FIFO_CD -------------------------------------------------------------------
#define FIFO_CD_ID 7
#define FIFO_CD_WRITE 0x0801109c
#define FIFO_CD_READ 0x08011098
#define FIFO_CD_CSR 0x08011020
#define FIFO_CD_SIZE 256-3

// FIFO_DE -------------------------------------------------------------------
#define FIFO_DE_ID 8
#define FIFO_DE_WRITE 0x080110c4
#define FIFO_DE_READ 0x080110c0
#define FIFO_DE_CSR 0x08011000
#define FIFO_DE_SIZE 256-3

// FIFO_EF -------------------------------------------------------------------
#define FIFO_EF_ID 9
#define FIFO_EF_WRITE 0x080110bc
#define FIFO_EF_READ 0x080110b8
#define FIFO_EF_CSR 0x08011040
#define FIFO_EF_SIZE 512-3


void init_AB_0();
int read_AB_0();
void write_AB_0(int *buffer);
void readStatus_AB_0();

void init_AB_1();
int read_AB_1();
void write_AB_1(int *buffer);
void readStatus_AB_1();

void init_AB_2();
int read_AB_2();
void write_AB_2(int *buffer);
void readStatus_AB_2();

void init_AD();
int read_AD();
void write_AD(int *buffer);
void readStatus_AD();

void init_AE();
int read_AE();
void write_AE(int *buffer);
void readStatus_AE();

void init_AF();
int read_AF();
void write_AF(int *buffer);
void readStatus_AF();

void init_BC();
int read_BC();
void write_BC(int *buffer);
void readStatus_BC();

void init_CD();
int read_CD();
void write_CD(int *buffer);
void readStatus_CD();

void init_DE();
int read_DE();
void write_DE(int *buffer);
void readStatus_DE();

void init_EF();
int read_EF();
void write_EF(int *buffer);
void readStatus_ED();


#endif
