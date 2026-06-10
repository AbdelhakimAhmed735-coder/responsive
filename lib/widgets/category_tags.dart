import 'package:flutter/material.dart';
import '../core/constants.dart';

class CategoryTags extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          bool isFirst = index == 0;
          return Container(
            margin: EdgeInsets.only(right: 8),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: isFirst ? kPrimaryGreen : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: isFirst ? null : Border.all(color: Colors.grey.shade800),
            ),
            child: Text(
              categories[index],
              style: TextStyle(color: isFirst ? Colors.black : Colors.white, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}