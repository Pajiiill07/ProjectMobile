import 'package:flutter/material.dart';
import 'package:myshopfazila/listalluser.dart';
import 'package:myshopfazila/listproduct.dart';

class TabNavbar extends StatefulWidget {
  const TabNavbar({super.key});

  @override
  State<TabNavbar> createState() => _TabNavbarState();
}

class _TabNavbarState extends State<TabNavbar> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color.fromRGBO(33, 53, 85, 1),
          body: TabBarView(
            children: [
              ListProducts(),
              ListAllUser()
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
                Tab(icon: Icon(Icons.shopping_bag,), text: 'Product',),
                Tab(icon: Icon(Icons.people_alt_outlined,), text: 'User'),
            ],
            labelColor: Color.fromRGBO(229, 210, 131, 1),
            unselectedLabelStyle: TextStyle(color : Color.fromRGBO(79, 112, 156, 1)),
            indicatorColor: Color.fromRGBO(229, 210, 131, 1),
          ),
        ),
      ),
    );
  }
}
