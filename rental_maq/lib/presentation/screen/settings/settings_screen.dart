import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  static const String name = 'Setting';
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings screen"),
      ),
      body: const ButtonTest(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_circle_left_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class ButtonTest extends StatelessWidget {
  const ButtonTest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Wrap(
        children: [
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('mensaje enviado a ${"nombre"}.')));
            },
            child: const Text('Ver calendario'),
          ),
        ],
      ),
    );
  }
}

class ButtonTest2 extends StatelessWidget {
  const ButtonTest2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Wrap(
        children: [
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('mensaje enviado a ${"nombre"}.')));
            },
            child: const Text('Enviar mensaje'),
          ),
        ],
      ),
    );
  }
}

class ButtonDatePickerWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonDatePickerWidget({
    super.key,
    required this.text,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onClicked,
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      );
}
