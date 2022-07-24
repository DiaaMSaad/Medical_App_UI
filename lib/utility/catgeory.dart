import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final IconImagePath;
  final String CategoryName;

  Category({required this.IconImagePath, required this.CategoryName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.deepPurple[100]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              IconImagePath,
              height: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(CategoryName),
          ],
        ),
      ),
    );
  }
}
