import 'package:bitirme_proje/calisma.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_proje/kelimeler.dart';

class Profil extends StatefulWidget {
  late int dogruSayisi;
  Profil({required this.dogruSayisi});

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
            Text("${widget.dogruSayisi} TRUE ${10-widget.dogruSayisi} FALSE", style: TextStyle(fontSize: 30),),
            Text(""),
            Text(""),
            Text(""),
            Text(""),
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
                    Text(""),
                    Text(""),
                    Text("%${((widget.dogruSayisi*100)/10).toInt()} PERFORMANCE", style: TextStyle(fontSize: 30, color: Colors.black),),
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

            Padding(
              padding: EdgeInsets.all(ekranGenisligi / 40),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Calisma()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pinkAccent,
                      padding: const EdgeInsets.fromLTRB(80, 20, 80, 20),
                      shape: const StadiumBorder(
                        side: BorderSide(color: Colors.white, width: 4),
                      )),
                  child: Text(
                    'Çalışma',
                    style: TextStyle(fontSize: ekranGenisligi / 10),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
