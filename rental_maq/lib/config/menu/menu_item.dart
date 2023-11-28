import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItem = <MenuItem>[
  MenuItem(title: 'Inicio', subtitle: '', link: '/home', icon: Icons.home),
  MenuItem(
      title: 'Solicitudes',
      subtitle: '',
      link: '/request',
      icon: Icons.account_box),
  MenuItem(title: 'Chat', subtitle: '', link: '/chat', icon: Icons.chat),
  MenuItem(
      title: 'Configuracion',
      subtitle: '',
      link: '/setting',
      icon: Icons.settings),
];
