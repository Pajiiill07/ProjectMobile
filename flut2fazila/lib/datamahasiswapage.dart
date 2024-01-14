import 'package:flutter/material.dart';

class DataMahasiswa extends StatefulWidget {
  const DataMahasiswa({super.key});

  @override
  State<DataMahasiswa> createState() => _DataMahasiswaState();
}

class _DataMahasiswaState extends State<DataMahasiswa> {
  TextEditingController student_name = TextEditingController();
  String namestudent = "";

  TextEditingController course_name = TextEditingController();
  String coursename = "";

  TextEditingController course_credits = TextEditingController();
  String creditscourse = "";

  void getStudentData() {
    setState(() {
      namestudent = student_name.text;
      coursename = course_name.text;
      creditscourse = course_credits.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Data Mahasiswa TI",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade400,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(40, 30, 40, 30),
              child: Text(
                "Politeknik Negeri Padang",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                controller: student_name,
                decoration: InputDecoration(
                    labelText: "Student Name",
                    labelStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.normal,
                        fontSize: 18),
                    hintText: "enter student name",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.face_2_rounded,
                        color: Colors.grey,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
                maxLength: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                controller: course_name,
                decoration: InputDecoration(
                    labelText: "Course Name",
                    labelStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.normal,
                        fontSize: 18),
                    hintText: "enter course name",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.apartment_rounded,
                        color: Colors.grey,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
                maxLength: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                controller: course_credits,
                decoration: InputDecoration(
                    labelText: "Course Credit",
                    labelStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.normal,
                        fontSize: 18),
                    hintText: "enter course credit",
                    hintStyle: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                    suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.alarm,
                        color: Colors.grey,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2, style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    )),
                maxLength: 10,
              ),
            ),
            SizedBox(
              width: 100,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  getStudentData();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey.shade200,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                            color: Colors.blueGrey.shade300),
                        borderRadius: BorderRadius.all(Radius.circular(15)))),
                child: Text(
                  "Proses",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                "Student Data : \nStudent Name : $namestudent \nCourse Name : $coursename \nCourse Credit : $creditscourse",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
