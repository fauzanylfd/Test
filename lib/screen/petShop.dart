import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gopet/component/shopModel.dart';
import 'package:gopet/component/foodModel.dart';
import 'package:gopet/screen/cartPage.dart';

class foodmenu extends StatefulWidget {
  @override
  _foodmenuState createState() => _foodmenuState();
}

class _foodmenuState extends State<foodmenu> {
  @override
  Widget build(BuildContext context) {
    return PetshopList();
  }
}

class PetshopList extends StatefulWidget {
  @override
  _PetshopListState createState() => _PetshopListState();
}

class _PetshopListState extends State<PetshopList> {
  String query = '';
  
PetFood foodModel = petFoods[1] ;

PetFood get petFood => PetFood(
  image: foodModel.image,
  name: foodModel.name,
  price: foodModel.price,
  discountPrice: foodModel.discountPrice,
);
  @override
  Widget build(BuildContext context) {
    final filteredpetshops = this.query.isEmpty
        ? petshops
        : petshops.where((p) => p.name.toLowerCase().contains(this.query.toLowerCase())).toList();
        return Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) => setState(() => this.query = value),
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                fillColor: Colors.black
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: petshops.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(petshops[index].image),
            title: Text(petshops[index].name),
            subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Jarak: ${petshops[index].distance} km'),
          Text('Layanan: ${petshops[index].services.join(', ')}'),],),
            onTap: () {
            // Asumsikan Anda memiliki sebuah list bernama cartItems
List<PetFood> cartItems = [];

Widget productCard(PetFood food) {
  return Column(
    children: <Widget>[
      Image.asset(food.image),  // Asumsikan Anda memiliki atribut imageUrl
      Text(food.name),  // Asumsikan Anda memiliki atribut name
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(food.price, style: TextStyle(decoration: TextDecoration.lineThrough)),  // Asumsikan Anda memiliki atribut price
          Text(food.discountPrice, style: TextStyle(color: Colors.red)),  // Asumsikan Anda memiliki atribut discountPrice
        ],
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              cartItems.add(food);  // Tambahkan food ke cartItems
            });
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('${food.name} telah ditambahkan ke keranjang'),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.red, // foreground
          ),
          child: Text('Tambah'),
        ),
      ),
    ],
  );
}


showDialog(
  context: context,
  builder: (BuildContext context) {
    return AlertDialog(
      title: Text('${petshops[index].name}'),
      content: SingleChildScrollView(  // Tambahkan ini
        child: Column(
          children: <Widget>[
            ...petshops[index].petFoods.map((food) => productCard(petFood)).toList(),  // Asumsikan petFoods adalah daftar objek PetFood
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Text('Tutup'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  },
);

            },
          );
        },
      ),
    );
  }
}