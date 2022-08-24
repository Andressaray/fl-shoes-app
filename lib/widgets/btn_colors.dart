import 'package:flutter/material.dart';

class BtnColors extends StatefulWidget {
  final Function handleChange;
  final String color;
  const BtnColors({Key? key, required this.handleChange, required this.color})
      : super(key: key);
  @override
  State<BtnColors> createState() => _BtnColorsState();
}

class _BtnColorsState extends State<BtnColors> {
  final List colors = [
    {'name': 'black', 'color': Colors.black},
    {'name': 'blue', 'color': Colors.blue},
    {'name': 'yellow', 'color': Color(0xFFFC9626)},
    {'name': 'green', 'color': Colors.green}
  ];

  @override
  Widget build(BuildContext context) {
    void handleChangeColor(String newColor) {
      widget.handleChange(newColor);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [...colors.map((e) => boxColor(e, handleChangeColor))],
      ),
    );
  }

  Widget boxColor(dynamic e, Function onPress) {
    return Container(
      height: 33,
      // margin: const EdgeInsets.symmetric(horizontal: 1),
      width: 33,
      child: ElevatedButton(
        onPressed: () {
          onPress(e['name']);
        },
        style: ElevatedButton.styleFrom(
          elevation: 2,
          primary: e['color'],
          shape: const CircleBorder(),
        ),
        child: const Text(
          '',
        ),
      ),
    );
  }
}
