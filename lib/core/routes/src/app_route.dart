part of routes;

abstract class AppRoute {
  static GoRouter get router => _router;

  static const String rootPath = '/root';
  static const String ticketPath = '/ticket';
  static const String splash = '/splash';

  static final GoRouter _router = GoRouter(
    initialLocation: splash,
    debugLogDiagnostics: true,
    routerNeglect: true,
    routes: [
      GoRoute(
        path: rootPath,
        pageBuilder: (context, state) => TransitionPage(
          state: state,
          child: BlocProvider(
            create: (_) => RootCubit(),
            child: RootPage(),
          ),
        ),
      ),
      GoRoute(
        path: ticketPath,
        pageBuilder: (context, state) => TransitionPage(
          state: state,
          child: TicketPromoPage(),
        ),
      ),
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}
