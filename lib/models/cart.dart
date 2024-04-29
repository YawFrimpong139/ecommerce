import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Jordan",
      price: "246",
      imagePath: "assets/images/shoe9.png",
      description:
          "Never give up for there is always light at the end of the tunnel",
    ),
    Shoe(
      name: "Air Max",
      price: "336",
      imagePath: "assets/images/shoe3.png",
      description:
          "Never give up for there is always light at the end of the tunnel",
    ),
    Shoe(
      name: "Long Jordan",
      price: "500",
      imagePath: "assets/images/shoe7.png",
      description:
          "Never give up for there is always light at the end of the tunnel",
    ),
    Shoe(
      name: "Nike Phantom",
      price: "130",
      imagePath: "assets/images/shoe2.png",
      description:
          "Never give up for there is always light at the end of the tunnel",
    ),
  ];
  // List of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemsFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
