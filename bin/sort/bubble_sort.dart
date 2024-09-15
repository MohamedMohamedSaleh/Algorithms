class BubbleSort {
  // [5,4,9,2,10,3,7,8,1,6]
  List<int> sort(List<int> list) {
    // loop through the list
    for (int i = list.length - 1; i >= 0; i--) {
      print(list);
      bool isSwapped = false;
      // loop through the list again
      for (int j = 0; j < i; j++) {
        // if the current element is greater than the next element
        if (list[j] > list[j + 1]) {
          int temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;
          isSwapped = true;
        }
      }

      if (!isSwapped) {
        break;
      }
    }
    // return the sorted list

    return list;
  }
}
