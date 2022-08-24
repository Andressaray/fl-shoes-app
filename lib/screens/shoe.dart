import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shoes_app/providers/shoe.dart';
import 'package:shoes_app/widgets/widgets.dart';

class ShoeScreen extends StatelessWidget {
  const ShoeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final shoe = Provider.of<Shoe>(context);
    return Scaffold(
        body: SafeArea(
      child: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  CardShoe(shoe: shoe),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Nike Air Max 720',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'The Nike Air Max 720 goes bigger than ever before with Nike tallest. Air unit yet, offtering more air underfoot for unimaginable, all-day comfort Max gone too far? We hope so.',
                    style: TextStyle(
                        color: Colors.grey[500],
                        letterSpacing: 0.5,
                        height: 1.8,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const InfoShoe(),
                  BtnColors(
                      handleChange: (String v) => shoe.changeColor = v,
                      color: shoe.color),
                ],
              ),
            ),
          ],
        ),
      )),
    ));
  }
}
