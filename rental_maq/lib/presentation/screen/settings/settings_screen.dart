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
          TextFormField(),
          TextFormField(
            maxLength: 10,
            obscureText: false,
          ),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('You clicked ElevatedButton.')));
            },
            child: const Text('Iniciar Sesión'),
          ),
          FilledButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('You clicked FilledButton.')));
              },
              child: const Text('Enabled')),
        ],
      ),
    );
  }
}
