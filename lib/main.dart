import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_app_flutter/pages/explorer_page.dart';
import 'package:travel_app_flutter/pages/profile_page.dart';
import 'package:travel_app_flutter/pages/travel_page.dart';
import 'package:travel_app_flutter/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const WelcomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'travel',
          builder: (BuildContext context, GoRouterState state) {
            return const TravelPage();
          },
        ),
        GoRoute(
          path: 'explorer',
          builder: (BuildContext context, GoRouterState state) {
            return const ExplorerPage();
          },
        ),
        GoRoute(
          path: 'profile',
          builder: (BuildContext context, GoRouterState state) {
            return const ProfilePage();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: const Color(0XFFFFFFFF)),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

