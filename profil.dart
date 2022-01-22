import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_proje/kelimeler.dart';

class Profil extends StatefulWidget {

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "Başarı Oranı",
              style: TextStyle(
                  fontSize: ekranGenisligi / 10,
                  color: Colors.pink),
            ),
            Padding(
              padding: EdgeInsets.all(ekranGenisligi / 30),
              child: Container(
                alignment: Alignment.center,
                width: ekranGenisligi,
                height: ekranYuksekligi / 5,
                color: Colors.pinkAccent,
                child: Column(
                  children: [
                    Text(""),
                    Text(
                      " 6 Doğru , 4 Yanlış",
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "% 60 Başarı",
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "",
              style: TextStyle(fontSize: ekranGenisligi / 10),
            ),
            Padding(
              padding: EdgeInsets.all(ekranGenisligi / 40),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Kelimeler()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pinkAccent,
                      padding: const EdgeInsets.fromLTRB(80, 20, 80, 20),
                      shape: const StadiumBorder(
                        side: BorderSide(color: Colors.white, width: 4),
                      )),
                  child: Text(
                    'Kelimelerim',
                    style: TextStyle(fontSize: ekranGenisligi / 10),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
