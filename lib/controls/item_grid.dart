import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos_system_layout/controls/rounded_thumbnail_image.dart';
import 'package:pos_system_layout/models/restaurant_items.dart';
import 'package:pos_system_layout/styles.dart';

class ItemGrid extends StatelessWidget {
  const ItemGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = MediaQuery.of(context).size.width ~/ 250;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: GridView.count(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 2 / 1.5,
          children:
              restaurantItems.map((item) => ItemTile(item: item)).toList(),
        ),
      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  const ItemTile({
    super.key,
    required this.item,
  });

  final RestaurantItem item;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(
            color: Color(0xffdddddd),
            width: 1.0,
          )),
      borderOnForeground: true,
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.headlineSmall?.copyWith(
                fontFamily:
                    GoogleFonts.roboto(fontWeight: FontWeight.w900).fontFamily,
              ),
            ),
            Text(
              '${item.weightInGrams}g',
              style: textTheme.titleMedium?.copyWith(color: Colors.grey),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${item.price.toStringAsFixed(2)}',
                    style: textTheme.headlineSmall?.copyWith(
                      fontFamily:
                          GoogleFonts.roboto(fontWeight: FontWeight.w700)
                              .fontFamily,
                      color: kPriceColor,
                    ),
                  ),
                  const RoundedThumbnailImage(
                      imagePath: 'assets/images/pizza.jpg')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
