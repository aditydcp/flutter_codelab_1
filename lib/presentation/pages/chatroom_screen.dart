import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatroomScreen extends StatefulWidget {
  const ChatroomScreen({super.key, required this.name});

  final String name;

  @override
  State<ChatroomScreen> createState() => _ChatroomScreenState();
}

class _ChatroomScreenState extends State<ChatroomScreen> {
  String _message = '';

  void setMessage(String message) {
    setState(() {
      _message = message;
    });
  }

  void sendMessage() {
    if (kDebugMode) {
      print(_message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.name),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Text(_message),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                    child: TextField(
                  decoration: const InputDecoration(hintText: 'Enter message'),
                  onChanged: (value) {
                    setMessage(value);
                  },
                )),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    sendMessage();
                  },
                )
              ],
            )
          ],
        )));
  }
}
