import 'package:flutter/material.dart';
import 'package:sneaker/models/shoe.dart';

class Cart extends ChangeNotifier {
  // plan here

  // list of shoe going for sale
  List<Shoe> shoeShop = [
    // create types of shoe you have
    Shoe(
        name: "Zoom FREAK",
        price: "236",
        imagePath: "images/2.jpg",
        description: "Men's Road Running Shoes"),
    Shoe(
        name: "Nike Air Force ",
        price: "205",
        imagePath: "images/3.jpg",
        description: "The Air Jordan 1 Low OG "),
    Shoe(
        name: "Nike Air Force 1",
        price: "196",
        imagePath: "images/5.jpg",
        description: "Nike Air Force Rock The  OG"),
    Shoe(
        name: "Air Jordan 1 Retro",
        price: "336",
        imagePath: "images/4.jpg",
        description: "The Air Jordan 1 Retro High "),
  ];

  // list of item in user cart
  List<Shoe> userCart = [];

  // get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item to cart
  void removeFromUserCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
