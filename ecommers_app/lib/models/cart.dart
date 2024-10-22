import 'package:ecommers_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(name: 'Air Jordans', price: '240', imagePath: 'lib/images/shoe-1.png', description: 'dont buy this'),
    Shoe(name: 'Zoom Freak', price: '236', imagePath: 'lib/images/shoe-2.png', description: 'dont buy this either'),
    Shoe(name: 'KD Treys', price: '220', imagePath: 'lib/images/shoe-3.png', description: 'fr dont buy this one'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}