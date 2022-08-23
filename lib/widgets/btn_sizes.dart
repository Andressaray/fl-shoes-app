import 'package:flutter/material.dart';

class BtnSizes extends StatelessWidget {
  final List<double> sizes = [0.4, 0.6, 10, 12];
  BtnSizes({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    void handlePress(double size) {
      print(size);
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [...sizes.map((e) => btnSize(e, handlePress, 0.6)).toList()],
    );
  }

  Widget btnSize(double size, Function onPress, double sizeSelected) {
    TextStyle styleTextSelect = TextStyle(
        color: sizeSelected == size ? Colors.white : Colors.amber,
        fontFamily: 'Poppins',
        fontSize: 11,
        fontWeight: FontWeight.bold);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 3,
              primary: sizeSelected == size ? Colors.amber : Colors.white,
              shape: const CircleBorder()),
          onPressed: () => onPress(size),
          child: Text(
            '$size',
            style: styleTextSelect,
          )),
    );
  }
}
