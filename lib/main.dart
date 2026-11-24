import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}
const List<Widget> screens = [WelcomeScreen(), DashboardScreen()];
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(fontSize: 15),
        ),
      ),
      // To preview a screen, change this line:
      // WelcomeScreen() or DashboardScreen()
      home: screens[1],
    );
  }
}