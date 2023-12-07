import 'package:flutter/material.dart';

class RequestsScreen extends StatelessWidget {
  static const String name = 'Request';
  const RequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Requests screen"),
      ),
      body: const Placeholder(),
    );
  }
}
