import 'package:flutter/material.dart';

class BtnSizes extends StatelessWidget {
  final Function handleChange;
  final double sizeSelected;
  final List<double> sizes = [7, 7.5, 8, 8.5, 9];
  BtnSizes({Key? key, required this.handleChange, required this.sizeSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handleChangeSize(double size) {
      handleChange(size);
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...sizes.map((e) => btnSize(e, handleChangeSize, sizeSelected)).toList()
      ],
    );
  }

  Widget btnSize(double size, Function onPress, double sizeSelected) {
    TextStyle styleTextSelect = TextStyle(
        color: sizeSelected == size ? Colors.white : const Color(0xFFFC9626),
        fontFamily: 'Poppins',
        fontSize: 10,
        fontWeight: FontWeight.bold);
    return Container(
        width: 48,
        height: 30,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 2,
              primary:
                  sizeSelected == size ? const Color(0xFFFC9626) : Colors.white,
            ),
            onPressed: () => onPress(size),
            child: Text(
              '$size',
              style: styleTextSelect,
            )));
  }
}
