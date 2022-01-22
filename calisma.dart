import 'package:bitirme_proje/zor.dart';
import 'package:flutter/material.dart';
import 'package:bitirme_proje/kolay.dart';
import 'package:bitirme_proje/soru_secenek.dart';

import 'orta.dart';

class Calisma extends StatelessWidget {
  const Calisma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('ÇALIŞMA', style: TextStyle(fontSize: 25)),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(75, 150, 15, 50),
        height: 300,
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Kolay()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    padding: const EdgeInsets.fromLTRB(80, 20, 80, 20),
                    shape: const StadiumBorder(
                      side: BorderSide(color: Colors.white, width: 4),
                    )),
                child: const Text(
                  'Kolay',
                  style: TextStyle(fontSize: 35),
                )),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Orta()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    padding: const EdgeInsets.fromLTRB(88, 20, 88, 20),
                    shape: const StadiumBorder(
                      side: BorderSide(color: Colors.white, width: 4),
                    )),
                child: const Text(
                  'Orta',
                  style: TextStyle(fontSize: 35),
                )),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Zor()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    padding: const EdgeInsets.fromLTRB(92, 20, 92, 20),
                    shape: const StadiumBorder(
                      side: BorderSide(color: Colors.white, width: 4),
                    )),
                child: const Text(
                  'Zor',
                  style: TextStyle(fontSize: 35),
                )),
          ],
        ),
      ),
    );
  }
}
