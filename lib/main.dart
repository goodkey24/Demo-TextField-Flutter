import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Textfield',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  // Menghitung Luas Persegi Panjang
  String fistName;
  String lastName;
  String fullName;

  void onPressed() {
    if (fistName.isEmpty || lastName.isEmpty) {
      return;
    } else {
      fullName = 'Nama Lengkap : $fistName " " $lastName';
    }
  }

  void onChangeFirstName(String value) {
    setState(
      () {
        fistName = value;
      },
    );
  }

  void onChangeLastName(String value) {
    setState(
      () {
        lastName = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan TextField'),
      ),
      // === Body ===
      body: Column(children: [
        TextField(
          decoration: const InputDecoration(hintText: "Masukkan Nama Depan"),
          onChanged: (String value) {
            onChangeFirstName(value);
          },
        ),
        TextField(
          decoration: const InputDecoration(hintText: "Masukkan Nama Belakang"),
          onChanged: (String value) {
            onChangeLastName(value);
          },
        ),
        ElevatedButton(
          onPressed: () {
            onPressed();
          },
          child: const Text('Hasil'),
        ),
        Container(height: 50.0),
        Text(fullName.toString())
      ]),
    );
  }
}
