import 'dart:typed_data';

import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rental_maq/config/model/publish/public_item.dart';
import 'package:rental_maq/presentation/screen/publish_detail/details_screen.dart';

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

  final CurrencyFormat clpSettings = const CurrencyFormat(
    code: 'clp',
    symbol: "\$",
    symbolSide: SymbolSide.left,
    thousandSeparator: '.',
    decimalSeparator: ',',
    symbolSeparator: ' ',
  );
  final List<PublishItem> listRandom;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listRandom.length,
        itemBuilder: (context, index) {
          final UriData? data = Uri.parse(listRandom[index].url).data;
          final Uint8List myImage = data!.contentAsBytes();

          return Card(
              child: InkWell(
            onTap: () {
              context.pushNamed(DetailsScreen.name, extra: listRandom[index]);
            },
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Title(
                        color: Colors.blue,
                        child: Text(listRandom[index].title)),
                    const Spacer(),
                    Text(
                        textAlign: TextAlign.left,
                        "${CurrencyFormatter.format(listRandom[index].value, clpSettings)} / ${listRandom[index].rentalType}"),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        height: 120,
                        width: 170,
                        child: Image.memory(
                            cacheHeight: 120, cacheWidth: 170, myImage),
                      ),
                    )
                  ],
                )
              ],
            ),
          ));
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
