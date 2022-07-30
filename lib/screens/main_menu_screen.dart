import 'package:flutter/material.dart';
import 'package:tictactoe_game/responsive/responsive.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/mainmenu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainMenuButton(
            buttonTitle: 'Create Room',
            onTap: () {},
          ),
          const SizedBox(height: 20),
          MainMenuButton(
            buttonTitle: 'Join Room',
            onTap: () {},
          ),
        ],
      )),
    );
  }
}

class MainMenuButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onTap;

  MainMenuButton({
    required this.buttonTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 60,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade300,
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
