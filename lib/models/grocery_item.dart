class GroceryItem {
  final int id;
  final String name;
  final String imageUrl;
  final String description;
  final double price;

  GroceryItem(
      {required this.description,
      required this.imageUrl,
      required this.id,
      required this.name,
      required this.price});
}
