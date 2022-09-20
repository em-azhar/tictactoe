import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CupertinoButton(
              color: Colors.black54,
              child: const Text("O"),
              onPressed: () {},
            ),
            CupertinoButton(
              color: Colors.white38,
              child: const Text("X"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
