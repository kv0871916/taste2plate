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
            Column(
              children: [
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
                VxSwiper(
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  items: [
                    Image.asset(
                      'icons/1.png',
                      width: context.screenWidth,
                      fit: BoxFit.fitWidth,
                    ),
                    Image.asset(
                      'icons/2.png',
                      width: context.screenWidth,
                      fit: BoxFit.fitWidth,
                    ),
                    Image.asset(
                      'icons/3.png',
                      width: context.screenWidth,
                      fit: BoxFit.fitWidth,
                    ),
                    Image.asset(
                      'icons/4.png',
                      width: context.screenWidth,
                      fit: BoxFit.fitWidth,
                    )
                  ],
                  height: 170,
                  viewportFraction: context.isMobile ? 0.75 : 0.4,
                  autoPlay: true,
                  autoPlayAnimationDuration: 1.seconds,
                ).box.p8.makeCentered(),
                'Deals of the Day'
                    .text
                    .size(10)
                    .fontWeight(FontWeight.w400)
                    .makeCentered()
              ],
            ).box.p8.white.outerShadowSm.makeCentered(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: context.safePercentHeight * 15,
                width: context.safePercentWidth * 40,
                child: Stack(
                  children: [
                    Image.asset(
                      'icons/1.png',
                      width: context.screenWidth,
                      fit: BoxFit.fitWidth,
                    ),
                    '75%\noff'
                        .text
                        .white
                        .bold
                        .scale(0.7)
                        .make()
                        .box
                        .margin(EdgeInsets.all(5))
                        .p8
                        .color(Colors.red)
                        .roundedFull
                        .shadow2xl
                        .make()
                        .objectBottomRight()
                  ],
                ),
              ),
            ),
            'Cooked Food'.text.semiBold.scale(0.8).makeCentered().box.make(),
            'Mutton Galauti Kebab, Tundy Kababi and ...'
                .text
                .fontWeight(FontWeight.w300)
                .scale(0.8)
                .makeCentered()
                .box
                .py4
                .make(),
            '13 : !5 : 40 Left'
                .text
                .red500
                .fontWeight(FontWeight.w300)
                .scale(0.8)
                .makeCentered()
                .box
                .py4
                .make(),
          ],
        ).scrollVertical(),
      ),
    );
  }
}
