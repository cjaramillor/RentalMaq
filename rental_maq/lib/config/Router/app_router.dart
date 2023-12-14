import 'package:go_router/go_router.dart';
import 'package:rental_maq/config/model/publish/public_item.dart';
import 'package:rental_maq/presentation/screen/login/login_screen.dart';
import 'package:rental_maq/presentation/screen/publish_detail/details_screen.dart';
import 'package:rental_maq/presentation/screen/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      name: HomeScreen.name,
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: SettingsScreen.name,
      path: '/setting',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      name: RequestsScreen.name,
      path: '/request',
      builder: (context, state) => const RequestsScreen(),
    ),
    GoRoute(
      name: ChatScreen.name,
      path: '/chat',
      builder: (context, state) => const ChatScreen(),
    ),
    GoRoute(
      name: LoginScreen.name,
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: DetailsScreen.name,
      path: '/detailsItem',
      builder: (context, state) {
        PublishItem item = state.extra as PublishItem;
        return DetailsScreen(itemdetail: item);
      },
    ),
  ],
);
