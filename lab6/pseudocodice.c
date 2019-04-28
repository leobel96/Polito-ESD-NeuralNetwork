int8_t dataIn [1024];
int8_t memB [1024];
int8_t memA [1024];
uint16_t positiveNum;
bool done = 0;

for (int i=0; i < 1024; i++){
  memA[i] = dataIn[i];
}

for (int i=0; i < 1024; i++){
  if (i == 0){
    memB[i] = memA[i]*0.5;
  }else if (i == 1){
    memB[i] = memA[i]*0.5 + memA[i-1]*3.75;
  }else{
    memB[i] = memA[i]*0.5 + memA[i-1]*3.75 - memA[i-2];
  }
  if (memB > 0){
    positiveNum++;
  }
}

done = 1;
