// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_app_grocery/components/grocery_item_tile.dart';
import 'package:flutter_app_grocery/model/cart_model.dart';
import 'package:flutter_app_grocery/pages/cart_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return CartPage();
        }))),
        backgroundColor: Colors.black,
        child: Icon(Icons.shop),
      ),
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 48,
          ),
          //good morning
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Good Morning',
              textAlign: TextAlign.start,
              style: TextStyle(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //Let's order fresh items for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Lets order fresh items for you',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 48,
          ),
          //divider
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(
              thickness: 4,
            ),
          ),

          SizedBox(
            height: 48,
          ),
          //fresh items + grid
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Fresh Items',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Expanded(child: Consumer<CartModel>(
            builder: ((context, value, child) {
              return GridView.builder(
                itemCount: value.shopItems.length,
                padding: EdgeInsets.all(12),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: ((context, index) {
                  return GroceryItemTile(
                    itemName: value.shopItems[index][0],
                    itemPrice: value.shopItems[index][1],
                    imagePath: value.shopItems[index][2],
                    color: value.shopItems[index][3],
                  );
                }),
              );
            }),
          )),
          SizedBox(
            height: 48,
          ),
        ]),
      ),
    );
  }
}
