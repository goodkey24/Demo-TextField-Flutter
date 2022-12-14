// ignore_for_file: unnecessary_this, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  String firstName = '';
  String lastName = '';
  String fullName = '';

  void onPressed() {
    setState(() {
      if (this.firstName.trim().isEmpty || this.lastName.trim().isEmpty)
        // ignore: curly_braces_in_flow_control_structures
        return;
      this.fullName = 'Hai ${this.firstName} ${this.lastName}, apa kabar?';
    });
  }

  void onChangedFirstName(String value) {
    setState(() {
      this.firstName = value;
    });
  }

  void onChangedLastName(String value) {
    setState(() {
      this.lastName = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo TextField'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            onChanged: (String value) {
              onChangedFirstName(value);
            },
            decoration: InputDecoration(
                hintText: 'Ketik nama depan',
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                )),
          ),
          TextField(
            onChanged: (String value) {
              onChangedLastName(value);
            },
            decoration: InputDecoration(
                hintText: 'Ketik nama belakang',
                hintStyle: TextStyle(
                  fontStyle: FontStyle.normal,
                )),
          ),
          ElevatedButton(
            child: Text('Klik'),
            onPressed: () {
              onPressed();
            },
          ),
          Container(
            height: 15.0,
          ),
          Text(this.fullName),
        ],
      ),
    );
  }
}
