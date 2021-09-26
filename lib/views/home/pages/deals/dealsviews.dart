import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DealsView extends StatefulWidget {
  const DealsView({Key? key}) : super(key: key);

  @override
  _DealsViewState createState() => _DealsViewState();
}

class _DealsViewState extends State<DealsView> {
  @override
  Widget build(BuildContext context) {
    Widget typefoodcat(
      String poster,
      String title,
    ) {
      return Container(
        margin: EdgeInsets.all(5),
        width: context.safePercentWidth * 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          textDirection: TextDirection.rtl,
          children: [
            Container(
              margin: EdgeInsets.all(5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(poster).box.rounded.makeCentered(),
              ),
            ),
            Container(
              width: context.safePercentWidth * 20,
              // margin: EdgeInsets.all(5),
              child: title.text.scale(0.8).wide.makeCentered(),
            ),
          ],
        ),
      );
    }

    return Material(
      child: Container(
        height: context.mq.size.height * 0.6525,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.yellow,
              height: context.safePercentHeight * 5,
              child: Row(
                children: [
                  Image.asset(
                    'icons/iconfinder_location_1814106.png',
                    scale: 10,
                  ),
                  'Select delivery location'.text.wide.indigo900.make()
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                typefoodcat('icons/OFFERS.jpg', 'Cooked Food'),
                typefoodcat('icons/OFFERS.jpg', 'Sweets'),
                typefoodcat('icons/OFFERS.jpg', 'Grains'),
                typefoodcat('icons/OFFERS.jpg', 'Spices'),
                typefoodcat('icons/OFFERS.jpg', 'Chicken')
              ],
            ).scrollHorizontal(),
          ],
        ),
      ),
    );
  }
}
