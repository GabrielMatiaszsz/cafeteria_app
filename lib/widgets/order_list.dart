import 'package:flutter/material.dart';
import '../models/menu_item.dart';

class OrderList extends StatelessWidget {
  final List<MenuItem> items;

  OrderList(this.items);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          title: Text(item.getDescription()),
          subtitle: Text("R\$ ${item.getPrice().toStringAsFixed(2)}"),
        );
      },
    );
  }
}
