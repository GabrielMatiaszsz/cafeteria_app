abstract class MenuItem {
  String getDescription();
  double getPrice();
}

class BasicMenuItem implements MenuItem {
  final String name;
  final double price;

  BasicMenuItem(this.name, this.price);

  @override
  String getDescription() => name;

  @override
  double getPrice() => price;
}
