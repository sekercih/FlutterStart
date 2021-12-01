
import 'package:flutter/material.dart';
class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  dynamic sayi1, sayi2, sonuc = 0;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  sayitopla() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 + sayi2;
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 - sayi2;
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 * sayi2;
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = num.parse(t1.text);
      sayi2 = num.parse(t2.text);
      sonuc = sayi1 / sayi2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      padding: EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: sayitopla, child: Text("Topla")),
                ElevatedButton(onPressed: sayiCikar, child: Text("Çıkar")),
                ElevatedButton(onPressed: sayiCarp, child: Text("Çarp")),
                ElevatedButton(onPressed: sayiBol, child: Text("Bol")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
