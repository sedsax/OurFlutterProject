import 'package:bitirme_proje/soru_secenek.dart';
import 'package:bitirme_proje/database_helper.dart';

class Kelimelerdao {
  Future<List<Kolayy>> tumKelimeler() async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM kolay");

    return List.generate(maps.length, (i) {
      var satir = maps[i];
      return Kolayy(satir["soru_id"], satir["ingilizce"], satir["secenek_1"],
          satir["secenek_2"], satir["dogru"]);
    });
  }

  Future<List<Ortaa>> tumKelimeler2() async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM orta");

    return List.generate(maps.length, (i) {
      var satir2 = maps[i];
      return Ortaa(satir2["soru_id2"], satir2["ingilizce2"], satir2["secenek2_1"],
          satir2["secenek2_2"], satir2["dogru2"]);
    });
  }

  Future<List<Zorr>> tumKelimeler3() async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM zor");

    return List.generate(maps.length, (i) {
      var satir3 = maps[i];
      return Zorr(satir3["soru_id3"], satir3["ingilizce3"], satir3["secenek3_1"],
          satir3["secenek3_2"], satir3["dogru3"]);
    });
  }

  Future<List<Kelimelerr>> tumKelimeler4() async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();

    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM kelime");

    return List.generate(maps.length, (i) {
      var satir4 = maps[i];
      return Kelimelerr(satir4["kelime_number"], satir4["ingilizce4"],
          satir4["secenek4_1"], satir4["secenek4_2"], satir4["dogru4"]);
    });
  }

  Future<void> kelimeEkle(String ingilizce4, String secenek4_1) async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    var bilgi=Map<String,dynamic>();
    bilgi["ingilizce4"]=ingilizce4;
    bilgi["secenek4_1"]=secenek4_1;

    await db.insert("kelime", bilgi);
  }
}
