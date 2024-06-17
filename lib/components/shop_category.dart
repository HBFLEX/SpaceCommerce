import 'package:flutter/material.dart';

class ShopCategory extends StatelessWidget {
  final String imagePath;
  final String name;

  const ShopCategory({super.key, required this.imagePath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipOval(
              child: Image.asset(
                imagePath,
                height: 100,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
