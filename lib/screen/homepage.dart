import 'package:app/screen/cartdetail.dart';
import 'package:app/screen/favourite.dart';
import 'package:app/screen/homescreen.dart';
import 'package:app/screen/profile.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex=0;
  List Screens=[
HomeScreen(),
FavouriteScreen(),
UserProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catgeories',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context,  MaterialPageRoute(builder: (context) {
              return CartDetail();
            },));
          }, icon: Icon(Icons.add_shopping_cart,color: Colors.white,))
        ],
      ),
      body: Screens[currentIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value){
          setState(() {
            currentIndex=value;
          });
        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home)),
         BottomNavigationBarItem(
          label: 'Favourite',
          icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person))

      ]),
    );
  }
}