import 'package:ecommerceapp/models/car.dart';
import 'package:flutter/material.dart';

class CarTile extends StatelessWidget {
  Car car;
  CarTile({
    super.key,
    required this.car,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.deepOrange[400],
        borderRadius: BorderRadius.circular(25),
      ),
      //child: Padding(
      //padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //car pic
          Container(
            margin: EdgeInsets.only(
              top: 25,
              left: 25,
              right: 25,
            ),
            child: Image.asset(car.imagePath),
          ),
          //description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              textAlign: TextAlign.center,
              car.description,
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
          ),
          //price +detail
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //car model
                    Text(
                      car.model,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    //price
                    Text(
                      '\$${car.price}',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),

                //add to cart button
                Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ],
            ),
          ),
        ],
      ),
      //),
    );
  }
}
