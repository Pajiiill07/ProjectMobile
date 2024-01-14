import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myshopfazila/listalluser.dart';
import 'package:myshopfazila/tabnavbar.dart';

class InsertNewUSer extends StatefulWidget {
  InsertNewUSer({Key? key}) : super (key: key);

  @override
  State<InsertNewUSer> createState() => _InsertNewUSerState();
}

class _InsertNewUSerState extends State<InsertNewUSer> {
  final _insertusername = TextEditingController();
  final _insertpassword = TextEditingController();
  final _insertemail = TextEditingController();
  final _insertaddress = TextEditingController();

  void clearText(){
    _insertusername.clear();
    _insertpassword.clear();
    _insertemail.clear();
    _insertaddress.clear();
  }

  Future<void> insertNew () async {
    String urlIns = "https://fazilasuryaazzahrah.000webhostapp.com/insertuser.php";
    try{
      var responseIns = await http.post(
          Uri.parse(urlIns),
          body: {
            "username" : _insertusername.text.toString(),
            "password" : _insertpassword.text.toString(),
            "email" : _insertemail.text.toString(),
            "address" : _insertaddress.text.toString()
          }
      );
      var newUSer = json.decode(responseIns.body);
      if (newUSer == "true"){
        print('Data berhasil di input yey');
      }else{
        print('Eeeee ndk mau dia do. Status Code : ${responseIns.statusCode }');
      }
    }
    catch(exc){
      print(exc);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New User",
          style: TextStyle(
            color: Color.fromRGBO(229, 210, 131, 1),
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(33, 53, 85, 1),
        foregroundColor: Color.fromRGBO(229, 210, 131, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
              child: Text(
                "Add User",
                style: TextStyle(
                    color: Color.fromRGBO(79, 112, 156, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: _insertusername,
                decoration: InputDecoration(
                  labelText:"Username",
                  labelStyle: TextStyle(
                      color: Color.fromRGBO(79, 112, 156, 1),
                      fontWeight: FontWeight.normal,
                      fontSize: 18
                  ),
                  hintText: "enter username",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.normal
                  ),
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.person,
                        color: Color.fromRGBO(79, 112, 156, 1),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                      BorderSide(width: 2, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )
                  )
                ),
              ),
            Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                obscureText: true,
                  controller: _insertpassword,
                  decoration: InputDecoration(
                      labelText:"Password",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(79, 112, 156, 1),
                          fontWeight: FontWeight.normal,
                          fontSize: 18
                      ),
                      hintText: "enter password",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.normal
                      ),
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.key,
                          color: Color.fromRGBO(79, 112, 156, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )
                  )
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                  controller: _insertemail,
                  decoration: InputDecoration(
                      labelText:"Email",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(79, 112, 156, 1),
                          fontWeight: FontWeight.normal,
                          fontSize: 18
                      ),
                      hintText: "enter email",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.normal
                      ),
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.email,
                          color: Color.fromRGBO(79, 112, 156, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )
                  )
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: TextField(
                  controller: _insertaddress,
                  decoration: InputDecoration(
                      labelText:"Address",
                      labelStyle: TextStyle(
                          color: Color.fromRGBO(79, 112, 156, 1),
                          fontWeight: FontWeight.normal,
                          fontSize: 18
                      ),
                      hintText: "enter address",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.normal
                      ),
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.home,
                          color: Color.fromRGBO(79, 112, 156, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                        BorderSide(width: 2, style: BorderStyle.solid),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )
                  )
              ),
            ),
            SizedBox(
              width: 120,
              height: 40,
              child: ElevatedButton(
                onPressed: () async{
                  await insertNew();
                  clearText();
                  Navigator
                      .of(context)
                      .push(MaterialPageRoute(builder: (context) => TabNavbar()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(79, 112, 156, 1),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 0,
                            style: BorderStyle.solid,
                            color: Color.fromRGBO(79, 112, 156, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
                child: Text(
                  "Add User",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
