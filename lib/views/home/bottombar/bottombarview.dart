import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class KrinfinityCustBottomBar extends StatelessWidget {
  KrinfinityCustBottomBar({
    Key? key,
    this.selectedIndex = 0,
    this.showElevation = true,
    this.iconSize = 24,
    this.backgroundColor,
    this.itemCornerRadius = 50,
    this.containerHeight = 56,
    this.animationDuration = const Duration(milliseconds: 270),
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    required this.items,
    required this.onItemSelected,
    this.curve = Curves.linear,
  })  : assert(items.length >= 2 && items.length <= 5),
        super(key: key);

  final int selectedIndex;
  final double iconSize;
  final Color? backgroundColor;
  final bool showElevation;
  final Duration animationDuration;
  final List<BottomKrinFinityCustBarItem> items;
  final ValueChanged<int> onItemSelected;
  final MainAxisAlignment mainAxisAlignment;
  final double itemCornerRadius;
  final double containerHeight;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? Theme.of(context).bottomAppBarColor;

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        boxShadow: [
          if (showElevation)
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
            ),
        ],
      ),
      child: Container(
        width: double.infinity,
        alignment: Alignment.bottomCenter,
        height: context.safePercentHeight * 10,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: items.map((item) {
            var index = items.indexOf(item);
            return GestureDetector(
              onTap: () => onItemSelected(index),
              child: _ItemWidget(
                item: item,
                iconSize: iconSize,
                isSelected: index == selectedIndex,
                backgroundColor: bgColor,
                itemCornerRadius: itemCornerRadius,
                animationDuration: animationDuration,
                curve: curve,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _ItemWidget extends StatelessWidget {
  final double iconSize;
  final bool isSelected;
  final BottomKrinFinityCustBarItem item;
  final Color backgroundColor;
  final double itemCornerRadius;
  final Duration animationDuration;
  final Curve curve;

  const _ItemWidget({
    Key? key,
    required this.item,
    required this.isSelected,
    required this.backgroundColor,
    required this.animationDuration,
    required this.itemCornerRadius,
    required this.iconSize,
    this.curve = Curves.linear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      selected: isSelected,
      child: AnimatedContainer(
        // height: context.percentHeight * 10,
        duration: animationDuration,
        curve: curve,
        // decoration: BoxDecoration(
        //   color:
        //       isSelected ? item.activeColor.withOpacity(0.2) : backgroundColor,
        //   borderRadius: BorderRadius.circular(itemCornerRadius),
        // ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            width: 50,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: context.safePercentHeight * 5,
                  child: ColorFiltered(
                    child: Image.asset(
                      item.image,
                    ),
                    colorFilter: isSelected
                        ? ColorFilter.mode(item.activeColor, BlendMode.srcIn)
                        : ColorFilter.mode(
                            item.inactiveColor!, BlendMode.srcIn),
                  ),
                ),
                // if (isSelected)
                Expanded(
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 4),
                    child: DefaultTextStyle.merge(
                      style: TextStyle(
                        fontSize: 9,
                        color: isSelected
                            ? item.activeColor.withOpacity(1)
                            : item.inactiveColor == null
                                ? item.activeColor
                                : item.inactiveColor,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      textAlign: item.textAlign,
                      child: item.title,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomKrinFinityCustBarItem {
  BottomKrinFinityCustBarItem({
    required this.title,
    required this.image,
    this.activeColor = Colors.blue,
    this.textAlign,
    this.inactiveColor,
  });

  final Widget title;
  final String image;
  final Color activeColor;
  final Color? inactiveColor;
  final TextAlign? textAlign;
}
