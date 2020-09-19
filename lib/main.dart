import 'package:flutter/material.dart';
import 'package:flutter_application_app/test.dart';
import 'dasturlash_listi.dart';
import 'dasturlash_detail.dart';

void main() => runApp(MyApps());

class MyApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      title: "Dasturlash Tillari",

      initialRoute: '/dasturlashListi',

      routes: {
        "/": (context) => DasturlashListi(),
        "/dasturlashListi": (context) => DasturlashListi()
      },

    );
  }
}
