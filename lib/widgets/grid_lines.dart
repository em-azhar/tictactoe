import 'package:flutter/material.dart';

class GridLines extends StatelessWidget {
  const GridLines({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        ColumnLine(),
        RowLine(),
      ],
    );
  }
}

class ColumnLine extends StatelessWidget {
  const ColumnLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Divider(
          // indent: 25,
          // endIndent: 25,
          color: Colors.black,
        ),
        Container(
          height: 139,
        ),
        const Divider(
          // indent: 25,
          // endIndent: 25,
          color: Colors.black,
        ),
      ],
    );
  }
}

class RowLine extends StatelessWidget {
  const RowLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const VerticalDivider(
          // indent: 190,
          // endIndent: 190,
          color: Colors.black,
        ),
        Container(
          width: 100,
        ),
        const VerticalDivider(
          // indent: 190,
          // endIndent: 190,
          color: Colors.black,
        ),
      ],
    );
  }
}
