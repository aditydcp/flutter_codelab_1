import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/data/model/message.dart';

class ChatroomScreen extends StatefulWidget {
  const ChatroomScreen({super.key, required this.name});

  final String name;

  @override
  State<ChatroomScreen> createState() => _ChatroomScreenState();
}

class _ChatroomScreenState extends State<ChatroomScreen> {
  String _tempMessage = '';
  final List<Message> _messages = <Message>[];
  final TextEditingController _messagerController = TextEditingController();

  void setMessage(String message) {
    setState(() {
      _tempMessage = message;
    });
  }

  void sendMessage() {
    setState(() {
      _messages.add(Message(
          timestamp: DateTime.now(), message: _tempMessage, sender: 'Me'));
      _tempMessage = '';
      _messagerController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.name),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              Column(
                children: _messages.map((message) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      children: [
                        Text(message.sender),
                        Text(message.message),
                        Text(message.timestamp.toString())
                      ],
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                      child: TextField(
                    controller: _messagerController,
                    decoration:
                        const InputDecoration(hintText: 'Enter message'),
                    onChanged: (value) {
                      setMessage(value);
                    },
                    onSubmitted: (value) {
                      sendMessage();
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
          ),
        )));
  }
}
