import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/presentation/pages/chatroom_screen.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Detail"),
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('images/farm-house.jpg'),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Farm House Lembong',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  // fontWeight: FontWeight.bold,
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 100.0,
                    child: Column(
                      children: <Widget>[
                        const Icon(Icons.calendar_today),
                        const SizedBox(height: 8.0),
                        Text(
                          'Open Everyday',
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    child: Column(
                      children: <Widget>[
                        const Icon(Icons.timer_rounded),
                        const SizedBox(height: 8.0),
                        Text(
                          '09:00 - 20:00',
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    child: Column(
                      children: <Widget>[
                        const Icon(Icons.attach_money),
                        const SizedBox(height: 8.0),
                        Text(
                          'Rp 25.000',
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                  'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.brown,
                      fontSize: 14.0,
                      fontFamily: 'Oxygen')),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              height: 200.0,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ChatroomScreen(name: 'Johnny')));
        },
        child: const Icon(Icons.message_rounded),
      ),
    );
  }
}
