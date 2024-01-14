import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myshopfazila/detilproduct.dart';
import 'package:myshopfazila/productitems.dart';

class ListProducts extends StatefulWidget {
  const ListProducts({super.key});

  @override
  State<ListProducts> createState() => _ListProductsState();
}

class _ListProductsState extends State<ListProducts> {
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
            child: Text (
              "Product List",
              style: TextStyle(
                  color: Color.fromRGBO(33, 53, 85, 1),
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: (1/1.1)
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return Padding(

                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetilProduct(productIndex: index,)));
                        },
                        splashColor: Color.fromRGBO(79, 112, 156, 0.8),
                        highlightColor: Color.fromRGBO(240, 240, 240, 1),
                        child: Material(
                          elevation: 20,
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(240, 240, 240, 1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(90, 5, 0, 0),
                                child: Text(
                                  products[index][3],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Image.asset(
                                  products[index][1],
                                  height: 100, width: 100,
                              ),
                              Text(
                                  products[index][0],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  products[index][2],
                                  style: TextStyle(
                                      fontSize: 13
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  } ,
              )
          ),
        ],
      ),
    );
  }
}
