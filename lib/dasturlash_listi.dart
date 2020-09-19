import 'package:flutter/material.dart';
import 'package:flutter_application_app/dasturlash_detail.dart';
import 'json/strings.dart';
import 'model/dasturlash.dart';

class DasturlashListi extends StatelessWidget {
  static List<Dasturlash> hammaTillar;

  @override
  Widget build(BuildContext context) {
    hammaTillar = malumotKelishiniTayyorlash();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dasturlash Tillari",
        ),
      ),
      body: listniTayyorla(),
    );
  }

  static List<Dasturlash> malumotKelishiniTayyorlash() {
    List<Dasturlash> dasturlash = [];

    for (int i = 0; i < 12; i++) {
      String kichikRasm =
          Strings.DASTURLASH_ISMLARI[i].toLowerCase()+"${i+1}.png";
      String kattaRasm = Strings.DASTURLASH_ISMLARI[i].toLowerCase() +
          "_katta"+
          "${i+1}.png";

      Dasturlash qoshiladiganElement = Dasturlash(
          Strings.DASTURLASH_ISMLARI[i],
          Strings.DASTURLASH_TARIXI[i],
          Strings.DASTURLASH_QULAYLIKLARI[i],
          kichikRasm,
          kattaRasm);
      dasturlash.add(qoshiladiganElement);
    }
    return dasturlash;
  }

  listniTayyorla() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return birSatrdaDasturlash(context, index);
      },
      itemCount: hammaTillar.length,
    );
  }

  Widget birSatrdaDasturlash(BuildContext context, int index) {
    Dasturlash oshaVaqtdagiIndeksi = hammaTillar[index];

    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(10),
          child: ListTile(
            //onTap: () => Navigator.pushNamed(context, "dasturlashHaqida/$index"),
            onTap: () => Navigator.push(context , MaterialPageRoute(builder: (context)=>DasturlashDetail(index))),
            leading: Image.asset(
              'images/' + oshaVaqtdagiIndeksi.kichikRasm,
              width: 60.0,
              height: 60.0,
            ),
            title: Text(
              oshaVaqtdagiIndeksi.dasturlashIsmi,
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.black
              ),
            ),
            subtitle: Text(
              oshaVaqtdagiIndeksi.dasturlashTarixi,
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          )
      ),
    );
  }
}
