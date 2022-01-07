import 'package:flutter/material.dart';

import 'category_template.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.delete,
                      color: Color(0xffA7A0EC),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.edit,
                      color: Color(0xffA7A0EC),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.arrow_downward_sharp,
                      color: Color(0xff6C60E0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          GridView(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8),
            children: [
              CategoryTemplate(
                icon: Icon(
                  Icons.lightbulb_rounded,
                  size: 40,
                  color: Color(0xffFAAE51),
                ),
                categoryName: 'New Ideas',
                bgColor: Color(0xffFFF3C6),
                categoryNameColor: Color(0xffFAAE51),
              ),
              CategoryTemplate(
                icon: Icon(
                  Icons.music_note_rounded,
                  size: 40,
                  color: Color(0xff369CF7),
                ),
                categoryName: 'Music',
                bgColor: Color(0xffD7EFFF),
                categoryNameColor: Color(0xff369CF7),
              ),
              CategoryTemplate(
                icon: Icon(
                  Icons.code,
                  size: 40,
                  color: Color(0xff9E86F5),
                ),
                categoryName: 'Programming',
                bgColor: Color(0xffE0D7FF),
                categoryNameColor: Color(0xff9E86F5),
              ),
              CategoryTemplate(
                icon: Icon(
                  Icons.food_bank_outlined,
                  size: 40,
                  color: Color(0xffF262C7),
                ),
                categoryName: 'Cooking',
                bgColor: Color(0xffFBE1FB),
                categoryNameColor: Color(0xffF262C7),
              ),
              CategoryTemplate(
                icon: Icon(
                  Icons.flight_takeoff,
                  size: 40,
                  color: Color(0xff41AA86),
                ),
                categoryName: 'Travel',
                bgColor: Color(0xffB8EEDC),
                categoryNameColor: Color(0xff41AA86),
              ),
              CategoryTemplate(
                icon: Icon(
                  Icons.explore,
                  size: 40,
                  color: Color(0xffFAAE51),
                ),
                categoryName: 'Explore',
                bgColor: Color(0xffFFDFCD),
                categoryNameColor: Color(0xffFAAE51),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
