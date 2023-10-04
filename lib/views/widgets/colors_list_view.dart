
import 'package:flutter/material.dart';

import 'color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentColor = 0;
  List<Color> colors =const [
    Color(0xff4357AD),
    Color(0xff48a9a6),
    Color(0xff985277),
    Color(0xfff18805),
    Color(0xff139a43),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentColor = index;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: ColorItem(
                isActive: currentColor == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
