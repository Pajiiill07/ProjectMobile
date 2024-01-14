import 'package:flutter/material.dart';
import 'package:myshopfazila/tabnavbar.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    double contWidth = MediaQuery.of(context).size.width * 1;
    double contHeight = MediaQuery.of(context).size.height * 0.58;
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(top: 50),
          color: const Color.fromRGBO(240, 240, 240, 1),
          child: Column(
            children: [
              Image.asset(
                './lib/assets/images/logo.png',
                scale: 1/1,
              ),
              const Text(
                "Be exclusive. Be Divine. Be yourself !",
                style: TextStyle(
                  decoration: TextDecoration.none,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(33, 53, 85, 1)
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 50)),
              Container(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  width: contWidth ,
                  height: contHeight,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(33, 53, 85, 1),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)), // Menentukan radius sudut
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(33, 53, 85, 1),
                        blurRadius: 5.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.only(bottom: 50),
                        child: Text(
                          "Welcome Back !!",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color.fromRGBO(229, 210, 131, 1)
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 70)),
                      SizedBox(
                        width: 250,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TabNavbar()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(229, 210, 131, 1),
                            shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0,
                                  style: BorderStyle.solid,
                                  color: Color.fromRGBO(229, 210, 131, 1),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(15))
                            ),
                          ),
                          child: const Text(
                            "List Products",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color.fromRGBO(33, 53, 85, 1)
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
                      SizedBox(
                        width: 250,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TabNavbar()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(248, 250, 229, 0.01),
                            shape: const RoundedRectangleBorder(
                              side: BorderSide(
                                width: 2,
                                style: BorderStyle.solid,
                                color: Color.fromRGBO(229, 210, 131, 1),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                          ),
                          child: const Text(
                            "List Users",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Color.fromRGBO(229, 210, 131, 1)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}