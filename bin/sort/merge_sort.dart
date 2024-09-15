
/// O(nlogn)
/// Divide and Conquer
/// 
/// [5, 4, 9, 2]
/// 
/// left: [5, 4]
///
///right: [9, 2]
///
///left: [5]
///
///right: [4]
///
///mergeList: [4, 5]
///
///left: [9]
///
///right: [2]
///
///mergeList: [2, 9]
///
///mergeList: [2, 4, 5, 9]
///
///[2, 4, 5, 9]
class MergeSort {
  List<int> sort(List<int> list) {
    //[5,4,9,2]
    if (list.length <= 1) {
      return list;
    }
    int middle = (list.length ~/ 2).floor();
    List<int> left = list.sublist(0, middle);
    print("left: $left");
    List<int> right = list.sublist(middle, list.length);
    print("right: $right");
    return merge(sort(left), sort(right));
  }
}

List<int> merge(List<int> list1, List<int> list2) {
  List<int> mergeList = [];
  int i = 0;
  int j = 0;

  while (i < list1.length && j < list2.length) {
    if (list1[i] < list2[j]) {
      mergeList.add(list1[i]);
      i++;
    } else {
      mergeList.add(list2[j]);
      j++;
    }
    if (i == list1.length) {
      while (j < list2.length) {
        mergeList.add(list2[j]);
        j++;
      }
    } else if(j == list2.length) {
      while (i < list1.length) {
        mergeList.add(list1[i]);
        i++;
      }
    }
  }

  print("mergeList: $mergeList");
  return mergeList;
}
