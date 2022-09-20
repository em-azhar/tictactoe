import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tictactoe/widgets/buttons.dart';

import 'widgets/grid_lines.dart';

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
  final List<String> _value = ["", "", "", "", "", "", "", "", "", "", "", ""];
  final List<int> _list = [0, 1, 2, 3, 4, 5, 6, 7, 8];

  void _onPressed(int id) {
    setState(() {
      _value[id] = widget.userChoice;
      for (int i = 0; i < _list.length; i++) {
        if (_list[i] == id) {
          _list.remove(id);
        }
      }
      bool checkWin = (_value[0] == _value[1] &&
              _value[1] == _value[2] &&
              _value[0] == widget.userChoice) ||
          (_value[3] == _value[4] &&
              _value[4] == _value[5] &&
              _value[3] == widget.userChoice) ||
          (_value[6] == _value[7] &&
              _value[7] == _value[8] &&
              _value[6] == widget.userChoice) ||
          (_value[0] == _value[3] &&
              _value[3] == _value[6] &&
              _value[0] == widget.userChoice) ||
          (_value[1] == _value[4] &&
              _value[4] == _value[7] &&
              _value[1] == widget.userChoice) ||
          (_value[2] == _value[5] &&
              _value[5] == _value[8] &&
              _value[2] == widget.userChoice) ||
          (_value[0] == _value[4] &&
              _value[4] == _value[8] &&
              _value[0] == widget.userChoice) ||
          (_value[6] == _value[4] &&
              _value[4] == _value[2] &&
              _value[6] == widget.userChoice);
      if (checkWin) {
        Navigator.pop(context);
      } else {
        Future.delayed(const Duration(milliseconds: 100), () {
          setState(() {
            if (_list.isNotEmpty) {
              _computerPlay(_list);
            }
          });
        });
      }
    });
  }

  void _computerPlay(List list) {
    setState(() {
      int random = Random().nextInt(list.length);
      int listValue = list[random];
      _value[listValue] = (widget.userChoice == "X") ? "O" : "X";
      for (int i = 0; i < _list.length; i++) {
        if (_list[i] == listValue) {
          _list.remove(listValue);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 180,
          ),
          child: Center(
            child: Stack(
              children: [
                const GridLines(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Buttons(
                          value: _value[0],
                          onPressed:
                              (_value[0] == "") ? () => _onPressed(0) : null,
                        ),
                        Buttons(
                          value: _value[1],
                          onPressed:
                              (_value[1] == "") ? () => _onPressed(1) : null,
                        ),
                        Buttons(
                          value: _value[2],
                          onPressed:
                              (_value[2] == "") ? () => _onPressed(2) : null,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Buttons(
                          value: _value[3],
                          onPressed:
                              (_value[3] == "") ? () => _onPressed(3) : null,
                        ),
                        Buttons(
                          value: _value[4],
                          onPressed:
                              (_value[4] == "") ? () => _onPressed(4) : null,
                        ),
                        Buttons(
                          value: _value[5],
                          onPressed:
                              (_value[5] == "") ? () => _onPressed(5) : null,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Buttons(
                          value: _value[6],
                          onPressed:
                              (_value[6] == "") ? () => _onPressed(6) : null,
                        ),
                        Buttons(
                          value: _value[7],
                          onPressed:
                              (_value[7] == "") ? () => _onPressed(7) : null,
                        ),
                        Buttons(
                          value: _value[8],
                          onPressed:
                              (_value[8] == "") ? () => _onPressed(8) : null,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
