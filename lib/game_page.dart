import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({
    super.key,
    required this.userChoice,
  });
  final String userChoice;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    String userChoice = widget.userChoice;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: const [
                Divider(),
                Divider(),
              ],
            ),
            Row(
              children: const [
                VerticalDivider(),
                VerticalDivider(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
