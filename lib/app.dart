import 'package:flutter/material.dart';
import 'package:pomodoro_app/src/app_routes.dart';

class PomodorApp extends StatelessWidget {
  const PomodorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'filmes',
      routes: AppRoutes().routes,
    );
  }
}