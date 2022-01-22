import 'package:flutter/material.dart';
import 'package:bitirme_proje/soru_secenek.dart';
import 'package:bitirme_proje/sorudao.dart';
import 'package:bitirme_proje/profil.dart';

class Zor extends StatefulWidget {
  @override
  _ZorState createState() => _ZorState();
}

class _ZorState extends State<Zor> {
  var liste = <Zorr>[];
  var liste2 = <Zorr>[];
  late Zorr zornesne;
  late int soru_numara;
  String sorumuz = "";
  String secenek1 = "";
  String secenek2 = "";
  late int dogru_cevap;

  int sayac = 0;
  int dogru = 0;
  int yanlis = 0;
  int i = 0;
  @override
  void initState() {
    super.initState();
    soruAl();
  }

  Future<void> soruAl() async {
    liste = await Kelimelerdao().tumKelimeler3();
    soruYukle();
  }

  Future<void> soruYukle() async {
    zornesne = liste[sayac];
    for (i = 0; i < liste.length; i++) {
      liste2.add(liste[sayac]);
    }
    soru_numara = liste2.elementAt(sayac).soru_id3;
    sorumuz = liste2.elementAt(sayac).ingilizce3;
    secenek2 = liste2.elementAt(sayac).secenek3_2;
    secenek1 = liste2.elementAt(sayac).secenek3_2;
    dogru_cevap = liste2.elementAt(sayac).dogru3;

    soru_numara = zornesne.soru_id3;
    sorumuz = zornesne.ingilizce3;
    secenek2 = zornesne.secenek3_2;
    secenek1 = zornesne.secenek3_1;
    dogru_cevap = zornesne.dogru3;

    setState(() {});
  }

  void soru_sayac() {
    sayac++;
    if (sayac < liste.length) {
      soruYukle();
    }
    /* else {
      Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context) => Profil(dogrusayi: dogru, yanlissayi: yanlis),)));
    } */
  }

  void kontrol() {
    if (dogru_cevap == 1) {
      dogru++;
    } else {
      yanlis++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: Text("Zor Seviye Sorular",
            style: TextStyle(fontSize: 25, fontStyle: FontStyle.normal)),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(height: 55),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border(
                      right:
                      BorderSide(width: 3.0, color: Colors.indigo.shade900),
                      left:
                      BorderSide(width: 3.0, color: Colors.indigo.shade900),
                      bottom:
                      BorderSide(width: 3.0, color: Colors.indigo.shade900),
                      top: BorderSide(
                          width: 3.0, color: Colors.indigo.shade900))),
              width: 400,
              height: 200,
              child: Text(sorumuz,
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.indigo.shade900,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center),
            ),
            Container(height: 70),
            Container(
              width: 350,
              height: 80,
              child: ElevatedButton(
                child: Text(secenek1,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15)),
                onPressed: () {
                  soru_sayac();
                  kontrol();
                },
              ),
            ),
            Container(height: 40),
            SizedBox(
              width: 350,
              height: 80,
              child: ElevatedButton(
                child: Text(secenek2,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15)),
                onPressed: () {
                  soru_sayac();
                  kontrol();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}