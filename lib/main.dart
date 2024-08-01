import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos_system_layout/controls/category_selector.dart';
import 'package:pos_system_layout/controls/expandable_button.dart';
import 'package:pos_system_layout/controls/item_grid.dart';
import 'package:pos_system_layout/controls/main_header.dart';
import 'package:pos_system_layout/controls/promo_selector.dart';
import 'package:pos_system_layout/styles.dart';

import 'controls/section_card.dart';
import 'controls/shopping_cart_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              MainSection(),
              OrderSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class MainSection extends StatelessWidget {
  const MainSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainHeader(),
          CategorySelector(),
          SizedBox(height: 10),
          ItemGrid(),
          PromoSelector(),
        ],
      ),
    );
  }
}

class OrderSection extends StatelessWidget {
  const OrderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const CurrentOrderHeader(),
            const SizedBox(height: 20),
            const ShoppingCartList(),
            const SizedBox(height: 10),
            const TotalsCard(),
            const CashlessCreditCard(),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: kPriceColor,
                padding: const EdgeInsets.symmetric(vertical: 30),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
              child: const Text('Pay with Cashless Credit'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Balance Due'),
                Text('\$5.00'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CashlessCreditCard extends StatelessWidget {
  const CashlessCreditCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SectionCard(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Cashless Credit'),
                Text(
                  '\$32.50',
                  style: textTheme.headlineSmall?.copyWith(
                    fontFamily: GoogleFonts.roboto(fontWeight: FontWeight.w700)
                        .fontFamily,
                    color: kPriceColor,
                  ),
                ),
                const Text('Available'),
              ],
            ),
            const Spacer(),
            ExpandableButton(
              text: 'Cancel',
              bgColor: kPromoBtnBGColor,
              fgColor: kPromoBtnFGColor,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class CurrentOrderHeader extends StatelessWidget {
  const CurrentOrderHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Expanded(
          child: Text(
            'Current Order',
            overflow: TextOverflow.ellipsis,
            style:
                textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 1,
            foregroundColor: Colors.grey[700],
            padding: const EdgeInsets.all(20),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          child: const Text(
            'Clear All',
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 1,
            foregroundColor: Colors.grey[700],
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
          child: const Icon(Icons.settings),
        ),
      ],
    );
  }
}

class TotalsCard extends StatelessWidget {
  const TotalsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SectionCard(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal'),
                Text('\$35.25'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Discounts'),
                Text('-\$5.00'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Sales Tax'),
                Text('\$2.25'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total'),
                Text('\$32.50'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
