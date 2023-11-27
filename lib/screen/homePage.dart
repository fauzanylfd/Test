import 'package:flutter/material.dart';
import 'package:gopet/common/utils/custom_colors.dart';
import 'package:gopet/screen/profilePage.dart';
import 'package:gopet/screen/pageMenu.dart';
import 'package:gopet/screen/cartPage.dart';

class HomePage extends StatefulWidget{
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List page=[
    pageMenu(),
    CartPage(),
    ProfilePage(),
  ];
  
  int index=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Container(
          width: 280,
          height: 38,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 280,
                  height: 38,
                  decoration: ShapeDecoration(
                    color: const Color(0x8ED9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 6,
                child: Container(
                  width: 16,
                  height: 16.39,
                  child: Stack(children: [Icon(Icons.search)]),
                  ),
                ),
                const Positioned(
                  left:50,
                  top: 7,
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Text('Search?',
                      style: TextStyle(
                        color: Color(0xFF4A4A4A),
                        fontSize: 19,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        actions: const [
          CircleAvatar(
            backgroundColor: Coloors.primary,
          ),
          SizedBox(
            width: 32,
            height: 40,
          )
        ],
        backgroundColor: Coloors.second,
        bottom: PreferredSize(
          preferredSize: Size(50,10), 
          child:Container(),),
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