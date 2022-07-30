import 'package:flutter/material.dart';
import 'package:tictactoe_game/screens/main_menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TicTacToe Game',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        MainMenuScreen.routeName: (context) => MainMenuScreen(),
      },
      initialRoute: MainMenuScreen.routeName,
    );
  }
}