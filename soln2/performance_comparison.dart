import 'bubble_sort.dart';
import 'quick_sort.dart';

void main() {
  List<int> unsortedList = [64, 34, 25, 12, 22, 11, 90];

  // Measure execution time for Bubble Sort
  DateTime startBubble = DateTime.now();
  List<int> bubbleSorted = bubbleSort(List.from(unsortedList));
  DateTime endBubble = DateTime.now();
  Duration bubbleSortTime = endBubble.difference(startBubble);

  print("Bubble Sorted List: $bubbleSorted");
  print("Bubble Sort Execution Time: ${bubbleSortTime.inMicroseconds} microseconds");

  // Measure execution time for Quick Sort
  DateTime startQuick = DateTime.now();
  List<int> quickSorted = quickSort(List.from(unsortedList));
  DateTime endQuick = DateTime.now();
  Duration quickSortTime = endQuick.difference(startQuick);

  print("Quick Sorted List: $quickSorted");
  print("Quick Sort Execution Time: ${quickSortTime.inMicroseconds} microseconds");
}
