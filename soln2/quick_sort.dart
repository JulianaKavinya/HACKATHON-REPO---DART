List<int> quickSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int pivot = arr[arr.length ~/ 2];
  List<int> left = [];
  List<int> right = [];
  List<int> equal = [];

  for (int num in arr) {
    if (num < pivot) {
      left.add(num);
    } else if (num > pivot) {
      right.add(num);
    } else {
      equal.add(num);
    }
  }

  return quickSort(left) + equal + quickSort(right);
}

void main() {
  List<int> unsortedList = [64, 34, 25, 12, 22, 11, 90];
  List<int> sortedList = quickSort(unsortedList);
  print("Quick Sorted List: $sortedList");
}
