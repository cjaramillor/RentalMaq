import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rental_maq/presentation/screen/screens.dart';

class LoginScreen extends StatelessWidget {
  static const String name = 'Login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: LoginWidget(),
      ),
    );
  }
}

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        runSpacing: 20.2,
        children: [
          const Center(
            child: Text(
              'Rental-Maq',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontFamily: AutofillHints.addressCity,
                  fontSize: 50,
                  letterSpacing: 3,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextFormField(),
          Center(
            child: TextFormField(
              obscureText: true,
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.goNamed(HomeScreen.name);
                  },
                  child: const Text(
                    'Iniciar Sesión',
                    textScaleFactor: 2.2,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
