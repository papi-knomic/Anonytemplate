import 'package:anony/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:anony/init.dart';
import 'package:anony/pages/splash_screen.dart';

void main() {
  runApp(Anony());
}

class Anony extends StatelessWidget {
  final Future _initFuture = Init.initialize();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "AnonySafeApp",
        home: FutureBuilder(
            future: _initFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Home();
              } else {
                return SplashScreen();
              }
            }));
  }
}
