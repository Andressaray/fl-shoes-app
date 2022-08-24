import 'package:flutter/material.dart';

class InfoShoe extends StatelessWidget {
  const InfoShoe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('\$180.0',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold)),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            primary: const Color(0xFFFC9626),
          ),
          child: const Text(
            'Buy now',
            style:
                TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w300),
          ),
        )
      ],
    );
  }
}
