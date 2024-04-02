import 'package:get/get.dart';

class TBController extends GetxController {
  final selectedFruits = <bool>[false, false, false].obs;
  final fruitSort = ''.obs;

  onPressed(int index) {
    // The button that is tapped is set to true, and the others to false.
    for (int i = 0; i < selectedFruits.length; i++) {
      selectedFruits[i] = i == index;
      if (index == 0) {
        fruitSort.value = 'Apple';
      } else if (index == 1) {
        fruitSort.value = 'Banana';
      } else if (index == 2) {
        fruitSort.value = 'Orange';
      }
    }
  }

  void removeData(){
    selectedFruits.value = <bool>[false, false, false];
    fruitSort.value = '';
  }
}
