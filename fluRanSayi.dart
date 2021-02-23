import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      title: "Rastgele Sayı Üreteci",
      home: Scaffold(
        backgroundColor: Colors.yellowAccent.shade200,
        appBar: AppBar(
          title: Text(
            "Rastgele Sayı Üreteci",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    "logo.png")
              ],
            ),
            Row(
              children: [
                Text(" "),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "SAYISAL LOTO",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                Text(" "),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                new Roller(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Roller extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TheRandom();
  }
}

class _TheRandom extends State<Roller> {
  int sayLoto1 = 0,
      sayLoto2 = 0,
      sayLoto3 = 0,
      sayLoto4 = 0,
      sayLoto5 = 0,
      sayLoto6 = 0;
  int supLoto1 = 0,
      supLoto2 = 0,
      supLoto3 = 0,
      supLoto4 = 0,
      supLoto5 = 0,
      supLoto6 = 0;
  int sansTopu1 = 0,
      sansTopu2 = 0,
      sansTopu3 = 0,
      sansTopu4 = 0,
      sansTopu5 = 0,
      sansTopu6 = 0;

  void GenerateRandomNumber() {
    final _random = new Random();
    int next(int min, int max) => min + _random.nextInt(max - min);
    setState(() {
      sayLoto1 = next(1, 90);
      sayLoto2 = next(1, 90);
      sayLoto3 = next(1, 90);
      sayLoto4 = next(1, 90);
      sayLoto5 = next(1, 90);
      sayLoto6 = next(1, 90);

      supLoto1 = next(1, 60);
      supLoto2 = next(1, 60);
      supLoto3 = next(1, 60);
      supLoto4 = next(1, 60);
      supLoto5 = next(1, 60);
      supLoto6 = next(1, 60);

      sansTopu1 = next(1, 34);
      sansTopu2 = next(1, 34);
      sansTopu3 = next(1, 34);
      sansTopu4 = next(1, 34);
      sansTopu5 = next(1, 34);
      sansTopu6 = next(1, 14);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$sayLoto1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$sayLoto2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$sayLoto3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$sayLoto4',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$sayLoto5',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$sayLoto6',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(" "),
          ],
        ),
        Row(
          children: [
            Text(
              "SÜPER LOTO",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Text(" "),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$supLoto1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$supLoto2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$supLoto3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$supLoto4',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$supLoto5',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$supLoto6',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(" "),
          ],
        ),
        Row(
          children: [
            Text(
              "ŞANS TOPU",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: [
            Text(" "),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$sansTopu1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$sansTopu2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$sansTopu3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$sansTopu4',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$sansTopu5',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              child: Icon(Icons.add),
            ),
            Container(
              child: Text(" "),
            ),
            Container(
              width: 40,
              height: 40,
              color: Colors.pink.shade100,
              alignment: Alignment.center,
              child: Text(
                '$sansTopu6',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text(" "),
          ],
        ),
        Row(
          children: [
            RaisedButton.icon(
              onPressed: GenerateRandomNumber,
              icon: Icon(
                Icons.casino,
                color: Colors.yellowAccent.shade200,
              ),
              color: Colors.indigo,
              label: Text(
                "SAYILARI ÜRET",
                style: TextStyle(color: Colors.yellowAccent.shade200),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
