import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_shop/constant.dart';

import 'component/categories.dart';
import 'component/new_arrival_product.dart';
import 'component/search_from.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/menu.svg")),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/icons/Location.svg"),
              const SizedBox(
                width: defaultPadding / 2,
              ),
              Text(
                "15/2 New Texas",
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
          actions: [
            IconButton(
              icon: SvgPicture.asset("assets/icons/Notification.svg"),
              onPressed: () {},
            ),
          ]),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [            
            Text(
              "Explore",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
            ),
            const Text(
              "Best out fit for you",
              style: TextStyle(fontSize: 18),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: SearchForm(),
            ),
            const Categorise(),
            const NewArrivalProduct(),
            const Popular()
          ],
          
        ),
      ),
    );
  }
}



 // appBar: AppBar(
      //   leading: IconButton(
      //     icon: SvgPicture.asset("assets/icons/menu.svg"),
      //     onPressed: () {},
      //   ),
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       SvgPicture.asset("assets/icons/location.svg"),
      //       const SizedBox(
      //         width: defaultPadding / 2,
      //       ),
      //       Text("15/2 New Texas",
      //           style: Theme.of(context).textTheme.bodyText1),
      //     ],
      //   ),
      //   actions: [
      //     IconButton(
      //         onPressed: () {},
      //         icon: SvgPicture.asset("assets/icons/Heart.svg"))
      //   ],
      // ),
      // body: SingleChildScrollView(
      //   physics: const BouncingScrollPhysics(
      //       parent: AlwaysScrollableScrollPhysics()),
      //   padding: const EdgeInsets.all(defaultPadding),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(
      //         'Explore',
      //         style: Theme.of(context)
      //             .textTheme
      //             .headline4!
      //             .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
      //       ),
      //       const Text(
      //         "Best Out Fit For You",
      //         style: TextStyle(fontSize: 18),
      //       ),
      //       const Padding(padding: EdgeInsets.symmetric(vertical: defaultPadding)),

      //     ],
      //   ),
      // ),