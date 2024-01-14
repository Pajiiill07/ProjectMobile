import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myshopfazila/productitems.dart';

class DetilProduct extends StatefulWidget {
  const DetilProduct({super.key, this.productIndex});
  final productIndex;

  @override
  State<DetilProduct> createState() => _DetilProductState();
}

class _DetilProductState extends State<DetilProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(33, 53, 85, 1),
        foregroundColor: Color.fromRGBO(229, 210, 131, 1),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.share,
              size: 22,
            ),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 22,
            ),
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.menu,
                size: 22,
              )
          )
        ],
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10),
            child: Text(
              products[widget.productIndex][0],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(33, 53, 85, 1)
              ),
            ),
          ),
          SizedBox(height: 15,),
          Center(
            child: Stack(
              children: [
                Container(
                  width: 300, height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    products[widget.productIndex][1],
                    height: 150, width: 150,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          Text(
            products[widget.productIndex][2],
            style: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(33, 53, 85, 1)
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Deskripsi",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(33, 53, 85, 1)
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  products[widget.productIndex][4],
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromRGBO(33, 53, 85, 1)
                  ),
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(20),
                child: Text(
                  "Product Size",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(33, 53, 85, 1)
                  ),
                ),
              ),
              Spacer(),
              Padding(padding: EdgeInsets.all(20),
                child: DropdownButton(
                  items:const [
                    DropdownMenuItem(
                      value: 5,
                      child: Text(
                        "S",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromRGBO(79, 112, 156, 1)
                        ),
                      )
                    ),
                    DropdownMenuItem(
                      value: 10,
                        child: Text(
                          "M",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(79, 112, 156, 1)
                          ),
                        )
                    ),
                    DropdownMenuItem(
                      value: 15,
                        child: Text(
                          "L",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(79, 112, 156, 1)
                          ),
                        )
                    ),
                    DropdownMenuItem(
                      value: 20,
                        child: Text(
                          "XL",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(79, 112, 156, 1)
                          ),
                        )
                    ),
                  ],
                  onChanged: (value) {
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            width: 250, height: 45,
            child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(79, 112, 156, 1)),
                child: Text(
                  "Add To Cart",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}