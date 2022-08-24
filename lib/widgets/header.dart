import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'For you',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.search,
              size: 25,
              color: Colors.black,
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
