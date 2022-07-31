import 'package:flutter/material.dart';

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
      onTap: onTap,
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
