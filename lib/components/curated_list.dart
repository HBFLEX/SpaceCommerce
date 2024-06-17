import 'package:flutter/material.dart';


class CuratedList extends StatelessWidget {
  final String imagePath;
  final String brandName;
  final String stars;
  final String votes;
  final String itemName;
  final double price;
  final double discountPrice;

  const CuratedList({
    super.key,
    required this.imagePath,
    required this.brandName,
    required this.stars,
    required this.votes,
    required this.itemName,
    required this.price,
    required this.discountPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // image + favorite
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imagePath,
                    height: 260,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14.0, vertical: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                      ),
                      child: const Icon(
                        Icons.favorite_outline,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            // brand & stars
            Row(
              children: <Widget>[
                Text(
                  brandName,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow[800],
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  stars,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '($votes)',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            // name
            Text(
              itemName,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // price & discounts
            Row(
              children: <Widget>[
                Text(
                  '\$$price',
                  style: const TextStyle(
                    color: Colors.redAccent,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 7,),
                Text(
                  '\$$discountPrice',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



