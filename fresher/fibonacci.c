#include <stdio.h>

void fibonacci(int n) {
  int a = 0, b = 1, c;
  printf("Day Fibonacci co %d so dau tien:\n", n);
  for (int i = 0; i < n; i++) {
    printf("%d ", a);
    c = a + b;
    a = b;
    b = c;
  }
  printf("\n");
}

int main() {
  int n;
  printf("Nhap so luong so Fibonacci: ");
  scanf("%d", &n);
  fibonacci(n);
  return 0;
}
