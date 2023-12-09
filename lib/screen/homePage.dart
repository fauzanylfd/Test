import 'package:flutter/material.dart';
import 'package:gopet/common/utils/custom_colors.dart';
import 'package:gopet/screen/petShop.dart';
import 'package:gopet/screen/profilePage.dart';
import 'package:gopet/screen/pagemenu.dart';
import 'package:gopet/screen/cartPage.dart';

class HomePage extends StatefulWidget{
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List page=[
    foodmenu(),
    CartPage(),
    ProfilePage(),
  ];
  
  int index=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
  actions: const [
    CircleAvatar(
      backgroundColor: Coloors.second,
    ),
    SizedBox(
      width: 32,
      height: 40,
    )
  ],
  backgroundColor: Coloors.primary,
  bottom: PreferredSize(
    preferredSize: Size(50,10), 
    child:Container(),
  ),
  title: Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Align(
        alignment: Alignment.center,
        child: Image.asset('assets/images/Logo.png', // Ganti dengan path logo Anda
          width: 150,
          height: 100,
        ),
      ),
    ],
  ),
),
      body:
      page[index],
    
      bottomNavigationBar: 
      BottomNavigationBar(
        onTap: (value) {
            setState(() {
              index=value;
            });
          },
          currentIndex:index,
        backgroundColor: Colors.green, unselectedItemColor:Colors.white, selectedItemColor: Colors.black,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:'home'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label:'cart'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:'profil'),
      ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
      ),

    );
  }
}