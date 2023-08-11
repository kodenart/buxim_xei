import 'package:buxim_xei/utils/app_routes.dart';
import 'package:buxim_xei/utils/route_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        appBarTheme: AppBarTheme(
            color: Colors.red[400],
            titleTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            )),
        canvasColor: Colors.amber[50],
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: Colors.green[100],
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        ),
      ),
      initialRoute: AppRoutes.home,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
