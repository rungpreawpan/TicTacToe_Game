import 'package:flutter/material.dart';
import 'package:tictactoe_game/responsive/responsive.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = 'joinroom';

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Join Room',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your nickname'),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _gameIdController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter game ID'),
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Join',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
