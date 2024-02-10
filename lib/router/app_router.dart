import 'package:espiservis/main.dart';
import 'package:go_router/go_router.dart';

import '../presentations/home/home.dart';

class AppRouter {
  GoRouter router() => GoRouter(
        debugLogDiagnostics: true,
        navigatorKey: navigatorKey,
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            builder: (_, __) => const HomePage(),
          ),
        ],
      );
}
