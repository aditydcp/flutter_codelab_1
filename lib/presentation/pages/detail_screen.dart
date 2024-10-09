import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/presentation/pages/chatroom_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Farm House Lembong',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 100.0,
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),
                        Text('Open Everyday'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.timer_rounded),
                        SizedBox(height: 8.0),
                        Text('09:00 - 20:00'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        SizedBox(height: 8.0),
                        Text('Rp 25.000'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Text('Lembong bgt',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 16.0,
                )),
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
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
