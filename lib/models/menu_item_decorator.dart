import 'package:cafeteria_app/models/menu_item.dart';

class MenuItemDecorator implements MenuItem {
  final MenuItem menuItem;
  final String extra;
  final double extraCost;

  MenuItemDecorator(this.menuItem, this.extra, this.extraCost);

  @override
  String getDescription() => "${menuItem.getDescription()} com $extra";

  @override
  double getPrice() => menuItem.getPrice() + extraCost;
}
