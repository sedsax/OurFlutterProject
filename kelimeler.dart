import 'package:bitirme_proje/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_proje/soru_secenek.dart';
import 'package:bitirme_proje/sorudao.dart';

class Kelimeler extends StatefulWidget {
  /* late int dogrusayi;
  late int yanlissayi;
  Profil({required this.dogrusayi, required this.yanlissayi}); */
  @override
  _KelimelerState createState() => _KelimelerState();
}

class _KelimelerState extends State<Kelimeler> {
  var liste = <Kelimelerr>[];
  int sayac=0;

  void initState(){
    super.initState();
    kelimeal();
  }
  
  Future<List<Kelimelerr>> kelimeal() async {
    var liste = await Kelimelerdao().tumKelimeler4();
    return liste;
  }

  void soru_sayac() {
    sayac++;
    if (sayac < liste.length) {
      kelimeal();
    }
    else {
      Navigator.pushReplacement(context, (MaterialPageRoute(builder: (context) => MyApp(),)));
    }
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Kelimelerr>>(
        future: kelimeal(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var kelimelerListesi = snapshot.data;
            return ListView.builder(
              itemCount: kelimelerListesi!.length,
              itemBuilder: (context, indeks) {
                var kelime = kelimelerListesi[indeks];
                return GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    height: 50,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            kelime.ingilizce4,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(kelime.secenek4_1),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center();
          }
        },
      ),
    );
  }
}
