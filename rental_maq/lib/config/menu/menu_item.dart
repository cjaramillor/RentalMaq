class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final String icon;

  const MenuItem(
      {required this.title,
      required this.subtitle,
      required this.link,
      required this.icon});
}

const appMenuItem = <MenuItem>[
  MenuItem(title: 'Inicio', subtitle: '', link: '', icon: ''),
  MenuItem(title: 'Solicitudes', subtitle: '', link: '', icon: ''),
  MenuItem(title: 'Chat', subtitle: '', link: '', icon: ''),
  MenuItem(title: 'Configuracion', subtitle: '', link: '', icon: ''),
];
