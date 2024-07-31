import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:pos_system_layout/models/restaurant_items.dart';

class CategorySelector extends StatelessWidget {
  const CategorySelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: CustomSlidingSegmentedControl<Categories>(
          padding: 20,
          clipBehavior: Clip.antiAlias,
          customSegmentSettings: CustomSegmentSettings(
            borderRadius: BorderRadius.circular(20),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          thumbDecoration: BoxDecoration(
            color: const Color(0xffe97319),
            borderRadius: BorderRadius.circular(20),
          ),
          initialValue: Categories.all,
          children: const {
            Categories.all: Text('All Items'),
            Categories.food: Text('Food'),
            Categories.alcohol: Text('Alcohol'),
            Categories.colddrinks: Text('Cold Drinks'),
            Categories.hotdrinks: Text('Hot Drinks'),
          },
          onValueChanged: (value) {},
        ),
      ),
    );
  }
}
