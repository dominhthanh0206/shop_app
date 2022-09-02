import 'package:flutter/material.dart';
import 'package:test_shop/Detail%20Screen/detail_screen.dart';
import 'package:test_shop/constant.dart';
import 'package:test_shop/models/Product.dart';

import 'section_title.dart';

class NewArrivalProduct extends StatelessWidget {
  const NewArrivalProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "New Arrival",
            press: () {},
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                demo_product.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: ProductCard(
                        title: demo_product[index].title,
                        image: demo_product[index].image,
                        price: demo_product[index].price,
                        bgcolor: demo_product[index].bgcolor,
                        voidCallback: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailScreen(product: demo_product[index],),
                              ));
                        },
                      ),
                    )),
          ),
        )
      ],
    );
  }
}


class Popular extends StatelessWidget {
  const Popular({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: SectionTitle(title: "Popular", press:(){},),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: 
              List.generate(demo_product.length, (index) => Padding(padding: EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
                  image: demo_product[index].image,
                  title: demo_product[index].title,
                  price: demo_product[index].price,
                  bgcolor: demo_product[index].bgcolor,
                  voidCallback: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(product: demo_product[index],),));
                  },
                ),
              ))
            
          ),
        )
      ],
    );
  }
}


class ProductCard extends StatelessWidget {
  const ProductCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      required this.bgcolor,
      required this.voidCallback})
      : super(key: key);
  final String title, image;
  final int price;
  final Color bgcolor;
  final VoidCallback voidCallback;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: voidCallback,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding/2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: bgcolor,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(defaultBorderRadius))),
              child: Image.asset(image, height: 132),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(title,
                        style: const TextStyle(
                          color: Colors.black,
                        ))),
                const SizedBox(
                  width: defaultPadding / 4,
                ),
                Text(
                  "\$" + price.toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
