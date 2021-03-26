import 'package:anony/animation/fadeanimation.dart';
import 'package:anony/pages/about.dart';
import 'package:anony/pages/emergency.dart';
import 'package:anony/pages/report.dart';
import 'package:anony/pages/rcases.dart';
import 'package:anony/pages/sos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    void _showReportPanel() {
      showModalBottomSheet(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15.0))),
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return Container(
              color: Colors.grey[700],
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40),
              child: ReportForm(),
            );
          });
    }

    final drawerItems = ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
              FadeAnimation(
                  1.2,
                  ListTile(
                      title: Center(
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0XFFEDC51B),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home()));
                      })),
              Divider(),
              SizedBox(
                height: 20.0,
              ),
              FadeAnimation(
                  1.3,
                  ListTile(
                      title: Center(
                        child: Text(
                          'SOS',
                          style: TextStyle(
                            color: Color(0XFFEDC51B),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SOS()));
                      })),
              Divider(),
              SizedBox(
                height: 20.0,
              ),
              FadeAnimation(
                  1.4,
                  ListTile(
                      title: Center(
                        child: Text(
                          'Recent Cases',
                          style: TextStyle(
                            color: Color(0XFFEDC51B),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => RCases()));
                      })),
              Divider(),
              SizedBox(
                height: 20.0,
              ),
              FadeAnimation(
                  1.5,
                  ListTile(
                      title: Center(
                        child: Text(
                          'About',
                          style: TextStyle(
                            color: Color(0XFFEDC51B),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => About()));
                      })),
              Divider(),
              SizedBox(
                height: 20.0,
              ),
              FadeAnimation(
                  1.6,
                  ListTile(
                      title: Center(
                        child: Text(
                          'Emergency',
                          style: TextStyle(
                            color: Color(0XFFEDC51B),
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Emergency()));
                      })),
            ],
          ),
        ),
      ],
    );

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('AnonySafeApp',
              style: TextStyle(
                color: Color(0XFFD32929),
                fontSize: 30.0,
              )),
          centerTitle: true,
          iconTheme: IconThemeData(color: Color(0XFF1F6BDB)),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              FadeAnimation(
                  1.4,
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: new AssetImage('assets/security.png')),
                    ),
                  )),
              FadeAnimation(
                  1.5,
                  Text(
                    '"Safety Assured"',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              FadeAnimation(
                  1.6,
                  Text(
                    'Ipsum',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
              FadeAnimation(
                1.7,
                MaterialButton(
                    minWidth: 250,
                    height: 60,
                    onPressed: () => _showReportPanel(),
                    color: Colors.blue,
                    elevation: 4.0,
                    child: Text(
                      'Report Crime',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Container(color: Colors.white, child: drawerItems),
        ),
      ),
    );
  }
}
