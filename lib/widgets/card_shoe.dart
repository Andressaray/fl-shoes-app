import 'package:flutter/material.dart';
import 'package:shoes_app/providers/providers.dart';
import 'package:shoes_app/widgets/btn_sizes.dart';

class CardShoe extends StatelessWidget {
  const CardShoe({
    Key? key,
    required this.shoe,
  }) : super(key: key);

  final Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: const LinearGradient(colors: [
            Color(0xFFFDD449),
            Color(0xFFF8B448),
            Color(0xFFFDBC46),
          ], tileMode: TileMode.mirror)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
              width: 250,
              height: 250,
              image: AssetImage(
                'assets/img/${shoe.color}.png',
              ),
              fit: BoxFit.contain),
          const SizedBox(
            height: 25,
          ),
          BtnSizes(
              handleChange: (double v) => shoe.changeSize = v,
              sizeSelected: shoe.size)
        ],
      ),
    );
  }
}
