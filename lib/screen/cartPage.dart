import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Product> _cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
        automaticallyImplyLeading: false,
      ),
      body: _cartItems.isEmpty
          ? Center(
              child: Text('Your shopping cart is empty.'),
            )
          : ListView.builder(
              itemCount: _cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_cartItems[index].name),
                  subtitle: Text('\$${_cartItems[index].price.toString()}'),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_shopping_cart),
                    onPressed: () {
                      _removeFromCart(index);
                    },
                  ),
                );
              },
            ),
    );
  }

  void _removeFromCart(int index) {
    setState(() {
      _cartItems.removeAt(index);
    });
  }
}

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}
