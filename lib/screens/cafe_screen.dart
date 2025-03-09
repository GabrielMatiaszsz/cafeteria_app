import 'package:flutter/material.dart';
import '../models/menu_item.dart';
import '../models/menu_item_factory.dart';
import '../models/order.dart';

class CafeScreen extends StatefulWidget {
  @override
  _CafeScreenState createState() => _CafeScreenState();
}

class _CafeScreenState extends State<CafeScreen> {
  final Order _order = Order();

  void _addItem(String type) {
    setState(() {
      _order.addItem(MenuItemFactory.createItem(type));
    });
  }

  void _showReceipt() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text("Comprovante"),
            content: Text(_order.generateReceipt()),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Fechar"),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cafeteria")),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children:
                  _order.items
                      .map(
                        (item) => ListTile(
                          title: Text(item.getDescription()),
                          subtitle: Text(
                            "R\$ ${item.getPrice().toStringAsFixed(2)}",
                          ),
                        ),
                      )
                      .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () => _addItem("Café"),
                  child: Text("Adicionar Café"),
                ),
                ElevatedButton(
                  onPressed: () => _addItem("Bolo"),
                  child: Text("Adicionar Bolo"),
                ),
                ElevatedButton(
                  onPressed: () => _addItem("Suco"),
                  child: Text("Adicionar Suco"),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _showReceipt,
                  child: Text("Gerar Comprovante"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
