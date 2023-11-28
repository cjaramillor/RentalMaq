import 'package:go_router/go_router.dart';
import 'package:rental_maq/presentation/screen/requests/requests_screen.dart';
import 'package:rental_maq/presentation/screen/screens.dart';
import 'package:rental_maq/presentation/screen/settings/settings_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/setting',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/request',
      builder: (context, state) => const RequestsScreen(),
    ),
    GoRoute(
      path: '/chat',
      builder: (context, state) => const ChatScreen(),
    ),
  ],
);
