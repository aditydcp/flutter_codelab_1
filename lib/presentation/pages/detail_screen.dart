import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/data/model/tourism_spot.dart';
import 'package:flutter_codelab_1/presentation/pages/chatroom_screen.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.spot});

  final TourismSpot spot;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(spot.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(spot.imageAsset),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                spot.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
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
                    width: 150.0,
                    child: Column(
                      children: <Widget>[
                        const Icon(Icons.calendar_today),
                        const SizedBox(height: 8.0),
                        Text(
                          spot.openDays,
                          style: informationTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 150.0,
                    child: Column(
                      children: <Widget>[
                        const Icon(Icons.timer_rounded),
                        const SizedBox(height: 8.0),
                        Text(
                          spot.openTime,
                          style: informationTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 150.0,
                    child: Column(
                      children: <Widget>[
                        const Icon(Icons.attach_money),
                        const SizedBox(height: 8.0),
                        Text(
                          spot.ticketPrice,
                          style: informationTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(spot.description,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      color: Colors.brown,
                      fontSize: 14.0,
                      fontFamily: 'Oxygen')),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final String imageUrl = spot.imageUrls[index];
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(imageUrl),
                      ),
                    );
                  },
                  itemCount: spot.imageUrls.length,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ChatroomScreen(name: spot.name)));
        },
        child: const Icon(Icons.message_rounded),
      ),
    );
  }
}
