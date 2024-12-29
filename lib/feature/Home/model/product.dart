class Product {
  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.originalPrice,
  });
  final String name;
  final String imageUrl;
  final double price;
  final double originalPrice;
}

final products = [
  Product(
    name: 'Fresh Carrot',
    imageUrl: 'https://via.placeholder.com/150',
    price: 18,
    originalPrice: 21,
  ),
  Product(
    name: 'Fresh Red Chili',
    imageUrl: 'https://via.placeholder.com/150',
    price: 14,
    originalPrice: 16,
  ),
  Product(
    name: 'Fresh Onion',
    imageUrl: 'https://via.placeholder.com/150',
    price: 18,
    originalPrice: 23,
  ),
  Product(
    name: 'Fresh Potato',
    imageUrl: 'https://via.placeholder.com/150',
    price: 10,
    originalPrice: 12,
  ),
];
