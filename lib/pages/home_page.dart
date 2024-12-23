import 'package:ecommerceapp/components/bottom_navbar.dart';
import 'package:ecommerceapp/pages/cart_page.dart';
import 'package:ecommerceapp/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //this selected index is to control the bottom navbar
  int _selectedIndex = 0;

  //this method will update the selected index
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
              builder: (context) => IconButton(
                    icon: Icon(Icons.menu, color: Colors.black),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ))),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      backgroundColor: Colors.deepOrange,
      drawer: Drawer(
          backgroundColor: Colors.grey[900],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //logo
              Column(
                children: [
                  DrawerHeader(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: null,
                    child: Image.asset(
                      'lib/images/logo.png',
                      color: Colors.white,
                    ),
                  ),
                  
                  SizedBox(
                    height: 40,
                  ),
                  //other pages
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: ListTile(
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      leading: Icon(
                        Icons.home,
                      ),
                      title: Text("Home"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: ListTile(
                      iconColor: Colors.white,
                      textColor: Colors.white,
                      leading: Icon(
                        Icons.info,
                      ),
                      title: Text("About"),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(
                    Icons.logout,
                  ),
                  title: Text("Logout"),
                ),
              ),
            ],
          )),
      body: _pages[_selectedIndex],
    );
  }
}
