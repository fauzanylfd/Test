import 'package:flutter/material.dart';
import 'package:gopet/component/foodModel.dart';
import 'package:gopet/screen/pageMenu.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List <PetFood> _cartItems = [];  // Ubah ini menjadi List<PetFood>

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
                  subtitle: Text(_cartItems[index].price),  // Hapus .toString()
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
