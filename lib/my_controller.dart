import 'package:get/get.dart';

class MyController extends GetxController{
  var books = 0.obs;
  var pens = 0.obs;
  int get sum => books.value+pens.value;


   bookIncrement(){
    books.value++;
  }
   bookdecrement(){
    if(books.value<=0){
      Get.snackbar('buying book', 'not possible',);
    }
    else{
      books.value--;
    }
  }
  penIncrement(){
     pens.value++;
  }
  penDecrement(){
    if(pens.value<=0){
      Get.snackbar('buying book', 'not possible',);
    }
    else{
      pens.value--;
    }
  }
}