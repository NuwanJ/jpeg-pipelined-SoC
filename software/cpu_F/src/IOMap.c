
#include <stdint.h>

#include "IOMap.h"
#include "FIFO.h"



// FIFO_AB_0 -------------------------------------------------------------------
void init_AB_0(){
   INIT_B(FIFO_AB_0_CSR, FIFO_AB_0_ID, FIFO_AB_0_SIZE);
}
int read_AB_0(){
   int val;
   READ_B(&val, FIFO_AB_0_READ, FIFO_AB_0_CSR, FIFO_AB_0_ID);
   return val;
}
void write_AB_0(int *buffer){
   WRITE_B(buffer, FIFO_AB_0_WRITE, FIFO_AB_0_CSR, FIFO_AB_0_SIZE, FIFO_AB_0_ID);
}
void readStatus_AB_0(){
   print_status(FIFO_AB_0_CSR);
}

// FIFO_AB_1 -------------------------------------------------------------------
void init_AB_1(){
   INIT_B(FIFO_AB_1_CSR, FIFO_AB_1_ID, FIFO_AB_1_SIZE);
}
int read_AB_1(){
   int val;
   READ_B(&val, FIFO_AB_1_READ, FIFO_AB_1_CSR, FIFO_AB_1_ID);
   return val;
}
void write_AB_1(int *buffer){
   WRITE_B(buffer, FIFO_AB_1_WRITE, FIFO_AB_1_CSR, FIFO_AB_1_SIZE, FIFO_AB_1_ID);
}
void readStatus_AB_1(){
   print_status(FIFO_AB_1_CSR);
}

// FIFO_AB_2 -------------------------------------------------------------------
void init_AB_2(){
   INIT_B(FIFO_AB_2_CSR, FIFO_AB_2_ID, FIFO_AB_2_SIZE);
}
int read_AB_2(){
   int val;
   READ_B(&val, FIFO_AB_2_READ, FIFO_AB_2_CSR, FIFO_AB_2_ID);
   return val;
}
void write_AB_2(int *buffer){
   WRITE_B(buffer, FIFO_AB_2_WRITE, FIFO_AB_2_CSR, FIFO_AB_2_SIZE, FIFO_AB_2_ID);
}
void readStatus_AB_2(){
   print_status(FIFO_AB_2_CSR);
}

// FIFO_AD -------------------------------------------------------------------
void init_AD(){
   INIT_B(FIFO_AD_CSR, FIFO_AD_ID, FIFO_AD_SIZE);
}
int read_AD(){
   int val;
   READ_B(&val, FIFO_AD_READ, FIFO_AD_CSR, FIFO_AD_ID);
   return val;
}
void write_AD(int *buffer){
   WRITE_B(buffer, FIFO_AD_WRITE, FIFO_AD_CSR, FIFO_AD_SIZE, FIFO_AD_ID);
}
void readStatus_AD(){
   print_status(FIFO_AD_CSR);
}


// FIFO_AE -------------------------------------------------------------------
void init_AE(){
   INIT_B(FIFO_AE_CSR, FIFO_AE_ID, FIFO_AE_SIZE);
}
int read_AE(){
   int val;
   READ_B(&val, FIFO_AE_READ, FIFO_AE_CSR, FIFO_AE_ID);
   return val;
}
void write_AE(int *buffer){
   WRITE_B(buffer, FIFO_AE_WRITE, FIFO_AE_CSR, FIFO_AE_SIZE, FIFO_AE_ID);
}
void readStatus_AE(){
   print_status(FIFO_AE_CSR);
}

// FIFO_AF -------------------------------------------------------------------
void init_AF(){
   INIT_B(FIFO_AF_CSR, FIFO_AF_ID, FIFO_AF_SIZE);
}
int read_AF(){
   int val;
   READ_B(&val, FIFO_AF_READ, FIFO_AF_CSR, FIFO_AF_ID);
   return val;
}
void write_AF(int *buffer){
   WRITE_B(buffer, FIFO_AF_WRITE, FIFO_AF_CSR, FIFO_AF_SIZE, FIFO_AF_ID);
}
void readStatus_AF(){
   print_status(FIFO_AF_CSR);
}

// FIFO_BC -------------------------------------------------------------------
void init_BC(){
   INIT_B(FIFO_BC_CSR, FIFO_BC_ID, FIFO_BC_SIZE);
}
int read_BC(){
   int val;
   READ_B(&val, FIFO_BC_READ, FIFO_BC_CSR, FIFO_BC_ID);
   return val;
}
void write_BC(int *buffer){
   WRITE_B(buffer, FIFO_BC_WRITE, FIFO_BC_CSR, FIFO_BC_SIZE, FIFO_BC_ID);
}
void readStatus_BC(){
   print_status(FIFO_BC_CSR);
}

// FIFO_CD -------------------------------------------------------------------
void init_CD(){
   INIT_B(FIFO_CD_CSR, FIFO_CD_ID, FIFO_CD_SIZE);
}
int read_CD(){
   int val;
   READ_B(&val, FIFO_CD_READ, FIFO_CD_CSR, FIFO_CD_ID);
   return val;
}
void write_CD(int *buffer){
   WRITE_B(buffer, FIFO_CD_WRITE, FIFO_CD_CSR, FIFO_CD_SIZE, FIFO_CD_ID);
}
void readStatus_CD(){
   print_status(FIFO_CD_CSR);
}

// FIFO_DE -------------------------------------------------------------------
void init_DE(){
   INIT_B(FIFO_DE_CSR, FIFO_DE_ID, FIFO_DE_SIZE);
}
int read_DE(){
   int val;
   READ_B(&val, FIFO_DE_READ, FIFO_DE_CSR, FIFO_DE_ID);
   return val;
}
void write_DE(int *buffer){
   WRITE_B(buffer, FIFO_DE_WRITE, FIFO_DE_CSR, FIFO_DE_SIZE, FIFO_DE_ID);
}
void readStatus_DE(){
   print_status(FIFO_DE_CSR);
}

// FIFO_EF -------------------------------------------------------------------
void init_EF(){
   INIT_B(FIFO_EF_CSR, FIFO_EF_ID, FIFO_EF_SIZE);
}
int read_EF(){
   int val;
   READ_B(&val, FIFO_EF_READ, FIFO_EF_CSR, FIFO_EF_ID);
   return val;
}
void write_EF(int *buffer){
   WRITE_B(buffer, FIFO_EF_WRITE, FIFO_EF_CSR, FIFO_EF_SIZE, FIFO_EF_ID);
}
void readStatus_EF(){
   print_status(FIFO_EF_CSR);
}
