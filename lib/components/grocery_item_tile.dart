import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GroceryItemTile extends StatelessWidget {
  const GroceryItemTile(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imagePath,
      this.color});

  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //image
            Image.asset(
              imagePath,
              height: 64,
            ),

            //itemName
            Text(itemName),
            //price
            MaterialButton(
              onPressed: () {},
              color: color,
              child: Text('\k' + itemPrice,
              style: TextStyle(fontWeight: FontWeight.bold,),),
              
            ),
          ],
        ),
      ),
    );
  }
}
