import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  ///list of items on sale
  final List _shopItems = [
    //[itemName, itemPrice, imagePath, color]
    ['avocado', '4.0', 'lib/images/avocado.png', Colors.green],
    ['banana', '10.0', 'lib/images/banana.png', Colors.yellow],
    ['fried-chicken', '34.0', 'lib/images/fried-chicken.png', Colors.brown],
    ['water', '5.0', 'lib/images/water-bottle.png', Colors.blue],
  ];

  get shopItems => _shopItems;
}
