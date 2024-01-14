import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myshopfazila/landingpage.dart';
import 'package:myshopfazila/listproduct.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Landing()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              './lib/assets/images/logoo.png',
              scale: (1/0.5),
            ),
            SizedBox(height: 20,),
            if (defaultTargetPlatform == TargetPlatform.android)
              Padding(
                padding: const EdgeInsets.fromLTRB(75, 80, 75, 20),
                child: const LinearProgressIndicator(
                  color: Color.fromRGBO(33, 53, 85, 1),
                  backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                ),
              )
            else
              const CupertinoActivityIndicator(
                color: Colors.black38,
              )
          ],
        ),
      ),
    );
  }
}
