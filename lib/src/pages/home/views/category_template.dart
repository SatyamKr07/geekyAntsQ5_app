import 'package:flutter/material.dart';

class CategoryTemplate extends StatelessWidget {
  Icon icon;
  String categoryName;
  Color bgColor;
  Color categoryNameColor;
  CategoryTemplate({
    Key? key,
    required this.icon,
    required this.categoryName,
    required this.bgColor,
    required this.categoryNameColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: icon,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  50,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              categoryName,
              style: TextStyle(
                color: categoryNameColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
