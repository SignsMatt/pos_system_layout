enum Categories { all, food, alcohol, colddrinks, hotdrinks }

class RestaurantItem {
  RestaurantItem({
    required this.name,
    required this.weightInGrams,
    required this.price,
    required this.imagePath,
    required this.category,
  });

  String name;
  int weightInGrams;
  double price;
  String imagePath;
  Categories category;
}

var restaurantItems = <RestaurantItem>[
  RestaurantItem(
    name: 'Grilled Corn',
    weightInGrams: 150,
    price: 1.75,
    imagePath: 'grilled-corn.jpg',
    category: Categories.food,
  ),
  RestaurantItem(
    name: 'Ranch Burgers',
    weightInGrams: 150,
    price: 7.75,
    imagePath: 'ranch-burgers.jpg',
    category: Categories.food,
  ),
  RestaurantItem(
    name: 'Bacon Pizza',
    weightInGrams: 150,
    price: 7.00,
    imagePath: 'assets/images/pizza.jpg',
    category: Categories.food,
  ),
  RestaurantItem(
    name: 'Fettuccine Pasta',
    weightInGrams: 150,
    price: 7.75,
    imagePath: 'fettucine-pasta.jpg',
    category: Categories.food,
  ),
  RestaurantItem(
    name: 'Stuffed Flank Steak',
    weightInGrams: 150,
    price: 13.50,
    imagePath: 'flank-steak.jpg',
    category: Categories.food,
  ),
  RestaurantItem(
    name: 'Burritos',
    weightInGrams: 150,
    price: 7.75,
    imagePath: 'burritos.jpg',
    category: Categories.food,
  ),
  RestaurantItem(
    name: 'Original Burgers',
    weightInGrams: 150,
    price: 7.00,
    imagePath: 'burgers.jpg',
    category: Categories.food,
  ),
  RestaurantItem(
    name: 'Pancakes',
    weightInGrams: 150,
    price: 1.75,
    imagePath: 'pancakes.jpg',
    category: Categories.food,
  ),
  RestaurantItem(
    name: 'Pepperoni Pizza',
    weightInGrams: 150,
    price: 1.75,
    imagePath: 'pepperoni-pizza.jpg',
    category: Categories.food,
  ),
  RestaurantItem(
    name: 'Michelob',
    weightInGrams: 150,
    price: 1.75,
    imagePath: 'michelob.jpg',
    category: Categories.alcohol,
  ),
  RestaurantItem(
    name: 'Red Wine',
    weightInGrams: 150,
    price: 3.75,
    imagePath: 'red-wine.jpg',
    category: Categories.alcohol,
  ),
  RestaurantItem(
    name: 'Tequila',
    weightInGrams: 150,
    price: 5.75,
    imagePath: 'tequila.jpg',
    category: Categories.alcohol,
  ),
  RestaurantItem(
    name: 'Coca Cola',
    weightInGrams: 150,
    price: 1.75,
    imagePath: 'cocacola.jpg',
    category: Categories.colddrinks,
  ),
  RestaurantItem(
    name: 'Pepsi',
    weightInGrams: 150,
    price: 1.75,
    imagePath: 'pepsi.jpg',
    category: Categories.colddrinks,
  ),
  RestaurantItem(
    name: 'Sprite',
    weightInGrams: 150,
    price: 1.75,
    imagePath: 'sprite.jpg',
    category: Categories.colddrinks,
  ),
  RestaurantItem(
    name: 'Coffee',
    weightInGrams: 150,
    price: 1.75,
    imagePath: 'coffee.jpg',
    category: Categories.hotdrinks,
  ),
  RestaurantItem(
    name: 'Hot Tea',
    weightInGrams: 150,
    price: 1.75,
    imagePath: 'hot-tea.jpg',
    category: Categories.hotdrinks,
  ),
  RestaurantItem(
    name: 'Hot Chocolate',
    weightInGrams: 150,
    price: 1.75,
    imagePath: 'hot-chocolate.jpg',
    category: Categories.hotdrinks,
  ),
];
