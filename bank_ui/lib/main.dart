import 'package:bank_ui/pages/complete.page.dart';
import 'package:bank_ui/pages/home.page.dart';
import 'package:bank_ui/pages/start.page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Bank UI',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const StartPage(),
      ),
          GoRoute(
        path: '/home-page',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/complete-page',
        builder: (context, state) => const CompletePage(),
      ),
    ],
  );
}
