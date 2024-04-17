import 'package:flutter/material.dart';

class ChatMessage {
  final String sender;
  final String text;
  final DateTime time;

  ChatMessage({
    required this.sender,
    required this.text,
    required this.time,
  });
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _messages = [];

  TextEditingController _textController = TextEditingController();

  void _addMessage(String text) {
    if (text.isNotEmpty) {
      setState(() {
        _messages.insert(
          0,
          ChatMessage(
            sender: 'Me',
            text: text,
            time: DateTime.now(),
          ),
        );
        _textController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                return ListTile(
                  title: Text(message.sender),
                  subtitle: Text(message.text),
                  trailing: Text(
                    '${message.time.hour}:${message.time.minute}',
                  ),
                );
              },
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'Enter your message...',
                    ),
                    onSubmitted: _addMessage,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _addMessage(_textController.text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}