import 'package:flutter/material.dart';

class MyFavoritePage extends StatefulWidget {
  @override
  _MyFavoritePageState createState() => _MyFavoritePageState();
}

class _MyFavoritePageState extends State<MyFavoritePage> {
  // Daftar favorit sementara, ganti dengan data sebenarnya
  List<String> favorites = ['Produk 1', 'Produk 2', 'Produk 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorite'),
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.pets),
              title: Text(favorites[index]),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    favorites.removeAt(index);
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
