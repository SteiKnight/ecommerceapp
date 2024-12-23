import 'package:flutter/material.dart';

import 'car.dart';

class Cart extends ChangeNotifier {
  //list of cars
  List<Car> carShop = [
    Car(
        model: '650S',
        price: '144 870',
        imagePath: 'lib/images/650s.png',
        description: '3.8 L twin-turbocharged M838T V8'),
    Car(
        model: '675LT',
        price: '289 990',
        imagePath: 'lib/images/675lt.png',
        description: '3.8 V8 Bi-turbo 675 ch - Traitement MSO'),
    Car(
        model: '720S',
        price: '321 000',
        imagePath: 'lib/images/720s.png',
        description:
            '4.0L twin-turbocharged V8 delivers 720PS and 770Nm of torque'),
    Car(
      model: '765 LT',
      price: '382 500',
      imagePath: 'lib/images/765lt.png',
      description: '755-horsepower twin-turbocharged V-8 mounted amidships',
    )
  ];
  //list of cars in user cart
  List<Car> userCart = [];

  //get list of cars for sale
  List<Car> getCarList() {
    return carShop;
  }

  //get cart
  List<Car> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Car car) {
    userCart.add(car);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Car car) {
    userCart.remove(car);
    notifyListeners();
  }
}
