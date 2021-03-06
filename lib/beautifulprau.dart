import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    "Gunung Prau",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Jawa Tengah , Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.favorite,
            color: Colors.red[800],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Text('2K',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          )
          ),
        ],
      ),
    );

  Color warna = Theme.of(context).primaryColor;
  Widget buttonSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(warna, Icons.call, 'CALL'),
      _buildButtonColumn(warna, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(warna, Icons.share, 'SHARE'),
    ],
  );

  Widget textSection = const Padding(
    padding: EdgeInsets.all(32),
    child: Text('Gunung Prahu terletak di kawasan Dataran Tinggi Dieng, Jawa Tengah, Indonesia.'
    'Gunung Prahu terletak pada koordinat 7°11′13″S 109°55′22″E.' 
    'Gunung Prahu merupakan tapal batas antara empat kabupaten yaitu Kabupaten Batang, Kabupaten Kendal, Kabupaten Temanggung dan Kabupaten Wonosobo.', 
    softWrap: true,
    textAlign: TextAlign.justify,
    ),
  );


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beautiful Prau', 
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black26,
          title: const Text('Beautiful Prau'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/gunungprau.jpg',
              width: 700,
              height: 200,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color warna, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: warna),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: warna,
            ),
          ),
        ),
      ],
    );
  }
}