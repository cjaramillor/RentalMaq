import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static const String name = 'Chat';
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat screen"),
      ),
      body: const Placeholder(),
    );
  }
}
