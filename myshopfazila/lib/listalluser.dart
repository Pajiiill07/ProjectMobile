import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myshopfazila/edituser.dart';
import 'package:myshopfazila/insertuser.dart';

class ListAllUser extends StatefulWidget {
  const ListAllUser({super.key});

  @override
  State<ListAllUser> createState() => _ListAllUserState();
}

class _ListAllUserState extends State<ListAllUser> {
  List alluser=[];

  void initState(){
    getAllUser();
    super.initState();
  }
  Future<void> getAllUser() async{
    String urlAllUser = "https://fazilasuryaazzahrah.000webhostapp.com/getdatauser.php";
    try{
      var response = await http.get(Uri.parse(urlAllUser));
      alluser = jsonDecode(response.body);
      setState(() {
        alluser = jsonDecode(response.body);
      });
    } catch (exc){
      print(exc);
    }
  }

  Future<void> refresh() async{
    await getAllUser();
  }

  Future<void> deleteUser(String idUser) async{
    String Urldel = "https://fazilasuryaazzahrah.000webhostapp.com/deleteuser.php";
    try{
      var responDel = await http.post(
        Uri.parse(Urldel),
        body: {"id" : idUser},
      );

      var result = json.decode(responDel.body);
      if(result["success"] == "true"){
        print('Data berhasil dihapus');
      }else{
        print('Data gagal dihapus');
      }

      getAllUser();
    }catch(exc){
      print(exc);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All User",
          style: TextStyle(
            color: Color.fromRGBO(229, 210, 131, 1),
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
        ),
        leading: Icon(
          CupertinoIcons.person_crop_circle,
          color: Color.fromRGBO(229, 210, 131, 1),
          size: 24
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(33, 53, 85, 1),
      ),
      body: RefreshIndicator(
        onRefresh: refresh,
        child: ListView.builder(
          itemCount: alluser.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                leading:const Icon(
                  Icons.person,
                  color: Color.fromRGBO(79, 112, 156, 1),
                  size: 24,
                ),
                title: Text(
                  alluser[index]["username"],
                  style: const TextStyle(
                    color: Color.fromRGBO(79, 112, 156, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  alluser[index]["address"],
                  style: const TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator
                            .of(context)
                            .push(MaterialPageRoute(
                            builder: (context) => editUser(EditCurrentUser: alluser[index])));
                      },
                      icon: Icon(
                        Icons.edit,
                        size: 22,
                        color: Colors.blue.shade300
                      ),
                    ),
                    IconButton(
                      onPressed: (){
                        deleteUser(alluser[index]["id"]);
                        getAllUser();
                      },
                      icon: Icon(
                          Icons.delete,
                          size: 22,
                          color: Colors.red.shade300
                       ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => InsertNewUSer()),
          );
        },
        splashColor: Color.fromRGBO(79, 112, 156, 0.8),
        backgroundColor: Color.fromRGBO(79, 112, 156, 1),
        child: Icon(
          Icons.add,
          size: 24,
        color: Colors.white,
        ),
      ),
    );
  }
}
