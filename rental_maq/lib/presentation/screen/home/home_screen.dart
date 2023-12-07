import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rental_maq/config/model/publish/public_item.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'Home';
  static final List<PublishItem> listRandom = lstItemPublished;
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('¡Bienvenido Usuario!'),
      ),
      drawer: const HamburgerMenu(),
      body: ListPublished(listRandom: listRandom),
    );
  }
}

class ListPublished extends StatelessWidget {
  const ListPublished({
    super.key,
    required this.listRandom,
  });

  final List<PublishItem> listRandom;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listRandom.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: <Widget>[
                Title(
                    color: Colors.blue, child: Text(listRandom[index].author)),
                Text(
                    textAlign: TextAlign.right,
                    listRandom[index].value.toString())
              ],
            ),
          );
        });
  }
}

class HamburgerMenu extends StatelessWidget {
  const HamburgerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Usuario ')),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Inicio'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.account_box,
            ),
            title: const Text('Solicitudes'),
            onTap: () {
              context.pushNamed("Request");
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text('Configuracion'),
            onTap: () {
              context.pushNamed("Setting");
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
            ),
            title: const Text('Cerrar Sesión'),
            onTap: () {
              context.go('/login');
            },
          )
        ],
      ),
    );
  }
}
