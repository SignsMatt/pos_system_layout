import 'package:flutter/material.dart';
import 'package:pos_system_layout/controls/rounded_thumbnail_image.dart';

import '../models/restaurant_items.dart';

class ProductPurchase {
  ProductPurchase({required this.item, required this.quantity});
  final RestaurantItem item;
  final int quantity;
}

List<ProductPurchase> shoppingCart = [
  ProductPurchase(item: restaurantItems[1], quantity: 5),
  ProductPurchase(item: restaurantItems[5], quantity: 2),
  ProductPurchase(item: restaurantItems[3], quantity: 4),
  ProductPurchase(item: restaurantItems[6], quantity: 1),
  ProductPurchase(item: restaurantItems[8], quantity: 7),
  ProductPurchase(item: restaurantItems[0], quantity: 8),
  ProductPurchase(item: restaurantItems[2], quantity: 2),
  ProductPurchase(item: restaurantItems[4], quantity: 9),
  ProductPurchase(item: restaurantItems[7], quantity: 3),
];

class ShoppingCartList extends StatelessWidget {
  const ShoppingCartList({
    super.key,
  });

  final int quantity = 3;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ...shoppingCart.map((e) => ShoppingCartListItem(purchase: e)),
        ],
      ),
    );
  }
}

class ShoppingCartListItem extends StatelessWidget {
  const ShoppingCartListItem({
    super.key,
    required this.purchase,
  });

  final ProductPurchase purchase;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 45,
            width: 45,
            child: RoundedThumbnailImage(imagePath: purchase.item.imagePath),
          ),
          SizedBox(
            width: 75,
            child: Text(purchase.item.name),
          ),
          if (purchase.quantity == 1) DeleteButton() else SubtractButton(),
          Text('${purchase.quantity}'),
          AddButton(),
          SizedBox(
            width: 65,
            child: Text(
              '\$${(purchase.item.price * purchase.quantity).toStringAsFixed(2)}',
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
      child: const Icon(Icons.add),
    );
  }
}

class SubtractButton extends StatelessWidget {
  const SubtractButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
      child: const Icon(Icons.remove),
    );
  }
}

class DeleteButton extends StatelessWidget {
  const DeleteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 1,
        foregroundColor: Colors.white,
        backgroundColor: Colors.pinkAccent[200],
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      child: const Icon(Icons.delete),
    );
  }
}
