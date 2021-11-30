// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "İlkel Blog Uygulaması",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        title: Text("Developerlar: Ozkan  Hakkı   Naci  Tırtıl "),
        backgroundColor: Color.fromARGB(420, 37, 665, 10),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  String blogYazisi = 'Developer sıralamasına Hoşgeldiniz.';

  ocakGoster() {
    setState(() {
      blogYazisi = "Developer Ozkan Hoşgeldiniz";
    });
  }

  subatGoster() {
    setState(() {
      blogYazisi = "Developer Hakkı Hoşgeldiniz";
    });
  }

  martGoster() {
    setState(() {
      blogYazisi = "Developer Naci Hoşgeldiniz";
    });
  }

  nisanGoster() {
    setState(() {
      blogYazisi = "Developer Tırtıl Hoşgeldiniz";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              blogYazisi,
              style: TextStyle(fontSize: 15, color: Colors.red),
            ),
            // ignore: prefer_const_constructors
            RaisedButton(
              onPressed: ocakGoster,
              child: Text("1. Developer"),
            ),
            RaisedButton(
                onPressed: subatGoster,
                child: Text(
                  "2. Developer",
                )),
            RaisedButton(onPressed: martGoster, child: Text("3. Developer ")),
            RaisedButton(onPressed: nisanGoster, child: Text("4. Developer ")),
          ],
        ),
      ),
    );
  }
}
