import 'package:ecommerceapp/models/car.dart';
import 'package:ecommerceapp/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Car car;
  CartItem({
    super.key,
    required this.car,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeFromCart(widget.car);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrange[200],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(
          widget.car.imagePath,
          width: 100,
        ),
        title: Text(widget.car.model),
        subtitle: Text('\$${widget.car.price}'),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
