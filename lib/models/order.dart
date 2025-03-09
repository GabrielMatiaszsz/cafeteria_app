import 'package:cafeteria_app/models/menu_item.dart';

class Order {
  List<MenuItem> items = [];

  void addItem(MenuItem item) {
    items.add(item);
  }

  double calculateTotal() {
    return items.fold(0, (total, item) => total + item.getPrice());
  }

  String generateReceipt() {
    String receipt = "--- Comprovante ---\n";
    for (var item in items) {
      receipt +=
          "${item.getDescription()} - R\$ ${item.getPrice().toStringAsFixed(2)}\n";
    }
    receipt += "Total: R\$ ${calculateTotal().toStringAsFixed(2)}";
    return receipt;
  }
}
