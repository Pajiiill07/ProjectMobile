import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myshopfazila/listalluser.dart';


final editNewUsername = TextEditingController();
final editNewPassword = TextEditingController();
final editNewEmail = TextEditingController();
final editNewAddress = TextEditingController();

late String userId;

Future<void> EditCurrentUser (BuildContext context) async {
  String urlEdit = "https://fazilasuryaazzahrah.000webhostapp.com/editdatauser.php";
  var responseEdit = await http.post(
      Uri.parse(urlEdit),
      body: {
        'id' : userId,
        'username' : editNewUsername.text.toString(),
        'password' : editNewPassword.text.toString(),
        'email' : editNewEmail.text.toString(),
        'address' : editNewAddress.text.toString()
      }
  );

  if(responseEdit.statusCode == 200){
    print('Data berhasil di update!');
  }else {
    print('Data gagal diupdate, Status Code = ${responseEdit.statusCode}');
  }
}

void clearTextInsert(){
  editNewUsername.clear();
  editNewPassword.clear();
  editNewEmail.clear();
  editNewAddress.clear();
}

class editUser extends StatefulWidget {
  const editUser({super.key, required EditCurrentUser});

  @override
  State<editUser> createState() => _editUserState();
}

class _editUserState extends State<editUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit User',
          style: TextStyle(
            color: Color.fromRGBO(229, 210, 131, 1),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromRGBO(33, 53, 85, 1),
        foregroundColor: Color.fromRGBO(229, 210, 131, 1),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            const Text(
              'Edit User',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                   color: Color.fromRGBO(79, 112, 156, 1),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                controller: editNewUsername,
                decoration: const InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.person,
                        color: Color.fromRGBO(79, 112, 156, 1),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                             color: Color.fromRGBO(79, 112, 156, 1),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    labelText: 'Username',
                    labelStyle: TextStyle(
                        fontSize: 16,
                         color: Color.fromRGBO(79, 112, 156, 1),
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                obscureText: true,
                controller: editNewPassword,
                decoration: const InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.key,
                        color:Color.fromRGBO(79, 112, 156, 1),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                             color: Color.fromRGBO(79, 112, 156, 1),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontSize: 16,
                         color: Color.fromRGBO(79, 112, 156, 1),
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                controller: editNewEmail,
                decoration: const InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.email,
                        color: Color.fromRGBO(79, 112, 156, 1),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                             color: Color.fromRGBO(79, 112, 156, 1),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                        fontSize: 16,
                         color: Color.fromRGBO(79, 112, 156, 1),
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                controller: editNewAddress,
                decoration: const InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.home,
                        color: Color.fromRGBO(79, 112, 156, 1),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 2,
                             color: Color.fromRGBO(79, 112, 156, 1),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    labelText: 'Address',
                    labelStyle: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(79, 112, 156, 1),
                    )
                ),
              ),
            ),
            const SizedBox(height: 30,),
            SizedBox(
              width: 120,
              height: 40,
              child: ElevatedButton(
                onPressed: () async{
                  /*String newUser = editNewUsername.text;
                  String newPass = editNewPassword.text;
                  String newMail = editNewEmail.text;
                  String newAdd = editNewAddress.text;*/

                  clearTextInsert();
                  await EditCurrentUser(context);
                },
                child: Text(
                  'Simpan',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(79, 112, 156, 1),
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0,
                          style: BorderStyle.solid,
                          color: Color.fromRGBO(79, 112, 156, 1),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
