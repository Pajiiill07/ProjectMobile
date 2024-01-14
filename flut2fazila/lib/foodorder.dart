import 'package:flutter/material.dart';

class FoodOrder extends StatefulWidget {
  const FoodOrder({super.key});

  @override
  State<FoodOrder> createState() => _FoodOrderState();
}

class _FoodOrderState extends State<FoodOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu_book_outlined,
          color: Colors.white,
        ),
        title: Text(
          "Food Order",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue.shade500,
        actions: <Widget> [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.white,
              )
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )
          )
        ],
      ),
      body: ListView(
        children:<Widget> [
          Card(
            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
            elevation: 25,
            shadowColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [
                ListTile(
                  leading: Image.asset(
                      'images/burgerrr.jpeg',
                      width: 100,
                      height: 100
                  ),
                  //tileColor: Colors.white,
                  title: Text(
                    "Burger",
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "Is a food consisting of fillings—usually a patty of ground meat",
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                          Icons.add_circle_outline,
                          size: 20,
                          color: Colors.green.shade700
                      ),
                      Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: Colors.red.shade700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
            elevation: 25,
            shadowColor: Colors.blue.shade50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [

                ListTile(
                  leading: Image.asset(
                      'images/corndddd.jpeg',
                      width: 100,
                      height: 100
                  ),
                  //tileColor: Colors.white,
                  title: Text(
                    "Corn Dog",
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "A corn dog is a sausage (usually a wiener) on a stick ",
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                          Icons.add_circle_outline,
                          size: 20,
                          color: Colors.green.shade700
                      ),
                      Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: Colors.red.shade700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
            elevation: 25,
            shadowColor: Colors.blue.shade50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [

                ListTile(
                  leading: Image.asset(
                      'images/friedchicken.jpeg',
                      width: 100,
                      height: 100
                  ),
                  //tileColor: Colors.white,
                  title: Text(
                    "Fried Chicken",
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "Is a dish consisting of chicken pieces that have been coated with seasoned flour ",
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                          Icons.add_circle_outline,
                          size: 20,
                          color: Colors.green.shade700
                      ),
                      Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: Colors.red.shade700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
            elevation: 25,
            shadowColor: Colors.blue.shade50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [

                ListTile(
                  leading: Image.asset(
                      'images/hothot.jpeg',
                      width: 100,
                      height: 100
                  ),
                  //tileColor: Colors.white,
                  title: Text(
                    "Hot Dog",
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "is a dish consisting of a grilled or steamed sausage served in the slit of a partially sliced bun",
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                          Icons.add_circle_outline,
                          size: 20,
                          color: Colors.green.shade700
                      ),
                      Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: Colors.red.shade700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
            elevation: 25,
            shadowColor: Colors.blue.shade50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [

                ListTile(
                  leading: Image.asset(
                      'images/kentanggoreng.jpeg',
                      width: 100,
                      height: 100
                  ),
                  //tileColor: Colors.white,
                  title: Text(
                    "French Fries",
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "are batonnet or allumette-cut[3] deep-fried potatoes of disputed origin from Belgium or France",
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                          Icons.add_circle_outline,
                          size: 20,
                          color: Colors.green.shade700
                      ),
                      Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: Colors.red.shade700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
            elevation: 25,
            shadowColor: Colors.blue.shade50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [

                ListTile(
                  leading: Image.asset(
                      'images/onion.jpeg',
                      width: 100,
                      height: 100
                  ),
                  //tileColor: Colors.white,
                  title: Text(
                    "Onion Ring",
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "is a form of appetizer or side dish in British and American cuisine.",
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                          Icons.add_circle_outline,
                          size: 20,
                          color: Colors.green.shade700
                      ),
                      Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: Colors.red.shade700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
            elevation: 25,
            shadowColor: Colors.blue.shade50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [

                ListTile(
                  leading: Image.asset(
                      'images/pasta.jpeg',
                      width: 100,
                      height: 100,
                  ),
                  //tileColor: Colors.white,
                  title: Text(
                    "Pasta",
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "is a type of food typically made from an unleavened dough of wheat flour mixed with water or eggs",
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                          Icons.add_circle_outline,
                          size: 20,
                          color: Colors.green.shade700
                      ),
                      Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: Colors.red.shade700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
            elevation: 25,
            shadowColor: Colors.blue.shade50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [

                ListTile(
                  leading: Image.asset(
                    'images/pizzaa.jpeg',
                    width: 100,
                    height: 100,
                  ),
                  //tileColor: Colors.white,
                  title: Text(
                    "Pizza",
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes",
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                          Icons.add_circle_outline,
                          size: 20,
                          color: Colors.green.shade700
                      ),
                      Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: Colors.red.shade700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
            elevation: 25,
            shadowColor: Colors.blue.shade50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [

                ListTile(
                  leading: Image.asset(
                    'images/spagetti.jpeg',
                    width: 100,
                    height: 100,
                  ),
                  //tileColor: Colors.white,
                  title: Text(
                    "Spaghetti",
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    " is a long, thin, solid, cylindrical pasta.It is a staple food of traditional Italian cuisine.",
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                          Icons.add_circle_outline,
                          size: 20,
                          color: Colors.green.shade700
                      ),
                      Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: Colors.red.shade700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
            elevation: 25,
            shadowColor: Colors.blue.shade50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [

                ListTile(
                  leading: Image.asset(
                    'images/steak.jpeg',
                    width: 100,
                    height: 100,
                  ),
                  //tileColor: Colors.white,
                  title: Text(
                    "Steak",
                    style: TextStyle(
                      color: Colors.blue.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "is a thick cut of meat generally sliced across the muscle fibers, sometimes including a bone",
                    style: TextStyle(
                      color: Colors.blue.shade500,
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                          Icons.add_circle_outline,
                          size: 20,
                          color: Colors.green.shade700
                      ),
                      Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: Colors.red.shade700,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
