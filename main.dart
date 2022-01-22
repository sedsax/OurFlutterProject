import 'package:flutter/material.dart';
import 'package:bitirme_proje/calisma.dart';
import 'package:bitirme_proje/kelime_ezber.dart';
import 'package:bitirme_proje/profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: MainMenu());
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:
            const Text('İNGİLİZCE ÖĞRENİYORUZ', style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(15, 150, 15, 50),
        height: 300,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(
                     MaterialPageRoute(builder: (context) => Profil()));
                },
                icon: const Icon(
                  Icons.account_circle_sharp,
                  size: 50,
                ),
                label: const Text(""),
                style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: const EdgeInsets.fromLTRB(10, 15, 4, 15),
                    shape: const StadiumBorder(
                      side: BorderSide(color: Colors.white, width: 4),
                    ))),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Calisma()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: const EdgeInsets.fromLTRB(70, 25, 70, 25),
                    shape: const StadiumBorder(
                      side: BorderSide(color: Colors.white, width: 4),
                    )),
                child: const Text(
                  'Çalışma',
                  style: TextStyle(fontSize: 35),
                )),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => KelimeEzber()));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent,
                    padding: const EdgeInsets.fromLTRB(80, 25, 80, 25),
                    shape: const StadiumBorder(
                      side: BorderSide(color: Colors.white, width: 4),
                    )),
                child: const Text(
                  'Kelime Ezber',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
