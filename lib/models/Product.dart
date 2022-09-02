import 'package:flutter/cupertino.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgcolor;
  Product(
      {required this.image,
      required this.title,
      required this.price,
      required this.bgcolor});
}

List<Product> demo_product = [
  Product(
      image: "assets/images/product_0.png",
      title: "Long Sleeve Shirts",
      price: 165,
      bgcolor: const Color(0xFFFEFBF9)),
  Product(
      image: "assets/images/product_1.png",
      title: "Casual Henley Shirts",
      price: 275,
      bgcolor: const Color(0xFFFEFBF9)),
  Product(
      image: "assets/images/product_2.png",
      title: "Curved Hem Shirt",
      price: 100,
      bgcolor: const Color(0xFFFEFBF9)),
  Product(
      image: "assets/images/product_3.png",
      title: "Casual Nolin",
      price: 100,
      bgcolor: const Color(0xFFFEFBF9))
];
