import 'package:flutter/material.dart';

class ShoeScreen extends StatelessWidget {
  const ShoeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
            ),
            Container(
                width: 350,
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
                    const Image(
                        width: 250,
                        height: 250,
                        image: AssetImage(
                          'assets/img/yellow.png',
                        ),
                        fit: BoxFit.contain),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}
