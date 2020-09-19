import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_app/dasturlash_listi.dart';
import 'package:palette_generator/palette_generator.dart';

import 'model/dasturlash.dart';

class DasturlashDetail extends StatefulWidget {

  int kelganIndex;

  DasturlashDetail(this.kelganIndex);

  @override
  _DasturlashDetailState createState() => _DasturlashDetailState();
}

class _DasturlashDetailState extends State<DasturlashDetail> {
  Dasturlash tanlanganDasturlash;
  Color berilganRang;
  PaletteGenerator palletteGenerator;

  @override
  void initState() {
    super.initState();
    tanlanganDasturlash = DasturlashListi.hammaTillar[widget.kelganIndex];
    berilganRangniTop();
  }


  void  berilganRangniTop(){
    Future<PaletteGenerator> fPaletteGenerator = PaletteGenerator.fromImageProvider(AssetImage("images/"+tanlanganDasturlash.kattaRasm));

    fPaletteGenerator.then((value) {
      palletteGenerator = value;
      debugPrint("Tanlangan Rasm Va uning Qiiymati: " + palletteGenerator.dominantColor.color.toString());

      setState(() {
        berilganRang = palletteGenerator.dominantColor.color;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    tanlanganDasturlash=DasturlashListi.hammaTillar[widget.kelganIndex];

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            //pinned: true,
            expandedHeight: 190,
            backgroundColor: berilganRang != null ? berilganRang : Colors.grey.shade300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/'+tanlanganDasturlash.kattaRasm),
              centerTitle: true,
              title: Text(tanlanganDasturlash.dasturlashIsmi+" Dasturlash Tili"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    tanlanganDasturlash.dasturlashQulayliklari,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
