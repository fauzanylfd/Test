import 'package:flutter/material.dart';
import 'package:gopet/component/foodcart.dart';
import 'package:gopet/screen/pageMenu.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<foodcart> _cartItems = Foodscart;

  @override
  Widget build(BuildContext context) {
    double total = 0;
    _cartItems.forEach((item) {
      total += item.discountPrice as double;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
        automaticallyImplyLeading: false,
      ),
      body: _cartItems.isEmpty
          ? Center(
              child: Text('Your shopping cart is empty.'),
            )
          : Column(
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    itemCount: _cartItems.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Image.asset(_cartItems[index].image),
                        title: Text(_cartItems[index].name),
                        subtitle: Text(_cartItems[index].discountPrice.toString()),
                        trailing: IconButton(
                          icon: Icon(Icons.remove_shopping_cart),
                          onPressed: () {
                            _removeFromCart(index);
                          },
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Total: Rp' + total.toStringAsFixed(2), style: TextStyle(fontSize: 24)),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan fungsi untuk menangani ketika tombol ditekan
                  },
                  child: Text('Pesan'),
                ),
              ],
            ),
    );
  }

  void _removeFromCart(int index) {
    setState(() {
      _cartItems.removeAt(index);
    });
  }
}
