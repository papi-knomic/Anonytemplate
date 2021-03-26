import 'package:flutter/material.dart';
import 'package:anony/shared/constants.dart';
import 'package:anony/animation/fadeanimation.dart';

class ReportForm extends StatefulWidget {
  @override
  _ReportFormState createState() => _ReportFormState();
}

class _ReportFormState extends State<ReportForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> crimes = [
    'Select Crime',
    'Rape',
    'Arson',
    'Armed Robbery',
    'Murder',
    'Other'
  ];
  final List<String> locations = [
    'Select Location',
    'Alimosho',
    'Kosofe',
    'Ikorodu',
    'Mainland',
    'Ifako',
    'Somolu',
    'Ikeja'
  ];
  final List<String> time = ['Ongoing', 'Done'];
  String _currentcrime;
  String _currentloc;
  String _ocurring;

  int _radioValueCrime = -1;

  void _crimeValue(int value) {
    setState(() {
      _radioValueCrime = value;

      switch (_radioValueCrime) {
        case 0:
          _ocurring = 'Now';
          break;
        case 1:
          _ocurring = 'Now';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Write Report',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20.0),
            FadeAnimation(
                1.1,
                DropdownButtonFormField(
                    decoration: textInputDecoration,
                    value: crimes[0],
                    items: crimes.map((crime) {
                      return DropdownMenuItem(
                        value: crime,
                        child: Text('$crime'),
                      );
                    }).toList(),
                    onChanged: (crime) =>
                        setState(() => _currentcrime = crime))),
            SizedBox(height: 20.0),
            // Padding(
            //   padding: EdgeInsets.only(
            //       bottom: MediaQuery.of(context).viewInsets.bottom),
            //   child: TextFormField(
            //     decoration: textInputDecoration.copyWith(
            //         hintText: 'If Others Type Here'),
            //   ),
            // ),
            SizedBox(height: 20.0),
            FadeAnimation(
                1.2,
                DropdownButtonFormField(
                    decoration: textInputDecoration,
                    value: locations[0],
                    items: locations.map((location) {
                      return DropdownMenuItem(
                        value: location,
                        child: Text('$location'),
                      );
                    }).toList(),
                    onChanged: (location) =>
                        setState(() => _currentloc = location))),
            SizedBox(height: 20.0),
            FadeAnimation(
                1.3,
                Text(
                  'When did the crime take place?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                  ),
                )),
            FadeAnimation(
                1.4,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Radio(
                        value: 0,
                        groupValue: _radioValueCrime,
                        onChanged: _crimeValue),
                    Text(
                      'Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Radio(
                        value: 1,
                        groupValue: _radioValueCrime,
                        onChanged: _crimeValue),
                    Text(
                      'Finished',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 20.0),
            ButtonTheme(
              minWidth: 80.0,
              height: 50.0,
              child: FadeAnimation(
                  1.5,
                  RaisedButton(
                    color: Color(0XFFEDC51B),
                    child: Text(
                      'Report',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      return AlertDialog(
                        title: Text('Sent'),
                        content: Text('Your report has been sent'),
                      );
                    },
                  )),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
