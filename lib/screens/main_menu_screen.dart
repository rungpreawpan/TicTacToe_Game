import 'package:flutter/material.dart';
import 'package:tictactoe_game/components/main_menu_button.dart';
import 'package:tictactoe_game/responsive/responsive.dart';
import 'package:tictactoe_game/screens/create_room_screen.dart';
import 'package:tictactoe_game/screens/join_room_screen.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/mainmenu';
  
  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainMenuButton(
            buttonTitle: 'Create Room',
            onTap: () {
              createRoom(context);
            },
          ),
          const SizedBox(height: 20),
          MainMenuButton(
            buttonTitle: 'Join Room',
            onTap: () {
              joinRoom(context);
            },
          ),
        ],
      )),
    );
  }
}