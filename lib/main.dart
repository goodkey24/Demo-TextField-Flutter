import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
      if (this.firstName.trim().length == 0 || this.lastName.trim().length == 0)
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
