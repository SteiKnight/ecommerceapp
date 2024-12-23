import 'package:ecommerceapp/components/car_tile.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
            itemBuilder: (context, index) {
              return CarTile();
            },
          ),
        )
      ],
    );
  }
}
