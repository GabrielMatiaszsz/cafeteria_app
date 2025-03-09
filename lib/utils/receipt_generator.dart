import '../models/menu_item.dart';

class ReceiptGenerator {
  static String generateReceipt(List<MenuItem> items, double total) {
    String receipt = "--- Comprovante ---\n";
    for (var item in items) {
      receipt +=
          "${item.getDescription()} - R\$ ${item.getPrice().toStringAsFixed(2)}\n";
    }
    receipt += "Total: R\$ ${total.toStringAsFixed(2)}";
    return receipt;
  }
}
