#include <stdint.h>
#include <stdio.h>

int convertEvenBitToZero(int num) { return (num & 0xAAAAAAA); }
int setBit(int num) {
  uint8_t cnt = 0;
  while (num) {
    num = num & (num - 1);
    cnt++;
  }
  return cnt;
}
int swapNibbles(int num) { return ((0x0F & num) << 4) | ((0xF0 & num) >> 4); }

int main() {
  int num;
  printf("Input: ");
  scanf("%d", &num);
  printf("Output: %d\n", convertEvenBitToZero(num));
  printf("Num of bit: %d\n", setBit(num));
  printf("Swap Nibbles: %d\n", swapNibbles(num));
  return 0;
}
