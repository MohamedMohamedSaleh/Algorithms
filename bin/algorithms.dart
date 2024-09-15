import 'sort/merge_sort.dart';

void main() {
  // insertion sort
  // InsertionSort insertionSort = InsertionSort();
  // print(insertionSort.sort([5, 4, 9, 2, 10, 3, 7, 8, 1, 6]));

  // selection sort
  // SelectionSort selection = SelectionSort();
  // print(selection.sort([5, 4, 9, 2, 10, 3, 7, 8, 1, 6]));

  // bubble sort
  // BubbleSort bubbleSort = BubbleSort();
  // print(bubbleSort.sort([5, 4, 9, 2, 10, 3, 7, 8, 1, 6]));

  MergeSort mergeSort = MergeSort();
  print(mergeSort.sort([5, 4, 9, 2]));
}
