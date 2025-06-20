#include <stdio.h>

void bubbleSort(int arr[], int n) {
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        // hoán đổi
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

int main() {
  int n;
  printf("Nhap so luong phan tu cua mang: ");
  scanf("%d", &n);

  int arr[n];
  printf("Nhap cac phan tu:\n");
  for (int i = 0; i < n; i++)
    scanf("%d", &arr[i]);

  bubbleSort(arr, n);

  printf("Mang sau khi sap xep tang dan:\n");
  for (int i = 0; i < n; i++)
    printf("%d ", arr[i]);
  printf("\n");

  return 0;
}
