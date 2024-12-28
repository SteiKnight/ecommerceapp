import 'package:ecommerceapp/components/car_tile.dart';
import 'package:ecommerceapp/models/car.dart';
import 'package:ecommerceapp/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //adding car to cart
  void addCarToCart(Car car) {
    Provider.of<Cart>(
      context,
      listen: false,
    ).addItemToCart(car);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Successfully added!"),
        content: Text('Check your cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //search bar
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.deepOrange.shade300,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.deepOrange[100],
                  ),
                ),
                Icon(Icons.search, color: Colors.deepOrange[100]),
              ],
            ),
          ),

          //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Text('To do something well is so worthwhile',
                style: TextStyle(
                  color: Colors.deepOrange[850],
                )),
          ),
          //hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange[300],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              padding: EdgeInsets.symmetric(horizontal: 25),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //create a car
                Car car = value.getCarList()[index];

                //return a car
                return CarTile(
                  car: car,
                  onTap: () => addCarToCart(car),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Divider(
              color: Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
