/// I Swape the th element with the element before it if it is greater than it
/// if it not greater than it, then i will not do anything
/// O(n^2)
class InsertionSort {
  // [5,4,9,2,10,3,7,8,1,6]

  List<int> sort(List<int> list) {
    for (int i = 1; i < list.length; i++) {
      print(list);
      int current = list[i];
      int j = i - 1;
      for (; j >= 0; j--) {
        if (current > list[j]) {
          break;
        }
        list[j + 1] = list[j];
      }
      list[j + 1] = current;
    }
    return list;
  }
}
