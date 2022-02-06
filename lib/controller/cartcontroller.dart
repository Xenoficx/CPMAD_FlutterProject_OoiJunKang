import 'package:get/get.dart';


class CartController extends GetxController {

  var _cart = {}.obs;

  //getters
  get cart => _cart;

  int get cartCount => _cart.length;
  int get count => _cart.length > 0 ? _cart.values.reduce((a,b) => a + b): 0;

  void addProduct(index) {
    if(_cart.containsKey(index)) {
      _cart[index] += 1;
    } else {
      _cart[index] = 1;
    }
  }

  void clear(index){
    if(_cart.containsKey(index)) {
      _cart.remove(index);
    }
  }
}