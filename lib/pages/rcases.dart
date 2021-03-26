import 'package:flutter/material.dart';

class RCases extends StatefulWidget {
  @override
  _RCasesState createState() => _RCasesState();
}

class _RCasesState extends State<RCases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(child: Text('Recent Cases')),
    );
  }
}
