


/// أسوأ واحد تقريبا 
/// O(n^2)
class SelectionSort {
  // [5,4,9,2,10,3,7,8,1,6]
  List<int> sort(List<int> list) {
    for (int i = 0; i < list.length -1; i++) {
      // asumption: minIndex = i this is the minimum value
      int minIndex = i;
      for(int j = i+1; j < list.length; j++){
        if(list [minIndex] > list[j]){
          minIndex = j;
        }
      }

      if(minIndex != i){
        int temp = list[i];
        list[i] = list[minIndex];
        list[minIndex] = temp;
      }
    }
    return list;
  }
}
