import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[800],
          leading: const Icon(Icons.home),
          title: const Text('Flutter Layout'),
        ),

        //YANG DIMODIFIKASI
        body: Container(
          margin: const EdgeInsets.all(10.0), //CODE BARU UNTUK MENGATUR MARGIN
          child: Column(
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Icon(Icons.archive),
                  Text(
                    'Artikel Terbaru',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/f/f9/001_View_of_Borobudur.jpg?utm_source=id.wikipedia.org&utm_campaign=index&utm_content=original',
                    ),
                    const Text('Candi Borobudur'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
