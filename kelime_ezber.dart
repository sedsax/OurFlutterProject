import 'package:flutter/material.dart';
import 'package:bitirme_proje/soru_secenek.dart';
import 'package:bitirme_proje/sorudao.dart';
import 'package:bitirme_proje/profil.dart';

class KelimeEzber extends StatefulWidget {
  @override
  _KelimeEzberState createState() => _KelimeEzberState();
}

class _KelimeEzberState extends State<KelimeEzber> {
  var liste = <Kelimelerr>[];
  var liste2 = <Kelimelerr>[];
  var liste3 = <Kelimelerr>[];
  late Kelimelerr kelimenesne;
  late int soru_numara4;
  String sorumuz4 = "";
  String secenek41 = "";
  String secenek42 = "";
  late int dogru_cevap4;

  int sayac4 = 0;
  int i = 0;
  @override
  void initState() {
    super.initState();
    soruAl4();
  }

  Future<void> soruAl4() async {
    liste = await Kelimelerdao().tumKelimeler4();
    soruYukle4();
  }

  Future<void> soruYukle4() async {
    kelimenesne = liste[sayac4];
    for (i = 0; i < liste.length; i++) {
      liste2.add(liste[sayac4]);
    }
    soru_numara4 = liste2.elementAt(sayac4).kelime_number;
    sorumuz4 = liste2.elementAt(sayac4).ingilizce4;
    secenek42 = liste2.elementAt(sayac4).secenek4_2;
    secenek41 = liste2.elementAt(sayac4).secenek4_2;
    dogru_cevap4 = liste2.elementAt(sayac4).dogru4;

    soru_numara4 = kelimenesne.kelime_number;
    sorumuz4 = kelimenesne.ingilizce4;
    secenek42 = kelimenesne.secenek4_2;
    secenek41 = kelimenesne.secenek4_1;
    dogru_cevap4 = kelimenesne.dogru4;

    setState(() {});
  }

  void soru_sayac() {
    sayac4++;
    if (sayac4 < liste.length) {
      soruYukle4();
    } else {
      //Navigator.of(context)
        //  .push(MaterialPageRoute(builder: (context) => Profil()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: Text("Kelime Çalışma",
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
              width: 350,
              height: 200,
              child: Text(sorumuz4,
                  style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.indigo.shade900,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center),
            ),
            Container(height: 70),
            Container(
              color: Colors.teal,
              width: 350,
              height: 80,
              child: ElevatedButton(
                child: Text(secenek41,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20)),
                onPressed: () {
                  soru_sayac();
                },
              ),
            ),
            Container(height: 40),
            SizedBox(
              width: 350,
              height: 80,
              child: ElevatedButton(
                child: Text(secenek42,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20)),
                onPressed: () {
                  soru_sayac();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
