import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_shop/Detail%20Screen/component/color_dot.dart';
import 'package:test_shop/constant.dart';
import 'package:test_shop/models/Product.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);
  final product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgcolor,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  "assets/icons/Heart.svg",
                  height: 25,
                ),
              ))
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: defaultPadding * 1.5,
          ),
          Expanded(
              child: Container(
            // color: Colors.black,
            padding: const EdgeInsets.fromLTRB(defaultPadding,
                defaultPadding * 2, defaultPadding, defaultPadding),
            decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultPadding * 3),
                    topRight: Radius.circular(defaultPadding * 3))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    )),
                    const SizedBox(width: defaultPadding),
                    Text(
                      "\$" + product.price.toString(),
                      style: Theme.of(context).textTheme.headline6,
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                      "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons."),
                ),
                Text(
                  "Color",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                Row(
                  children: const [
                    ColorDot(color: Colors.white, isActive: false),
                    ColorDot(color: Colors.black, isActive: true),
                    ColorDot(color: Colors.yellow, isActive: false)
                  ],
                ),
                const SizedBox(height: defaultPadding * 2),
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: primaryColor, shape: const StadiumBorder()),
                    child: const Text("Add to cart"),),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
