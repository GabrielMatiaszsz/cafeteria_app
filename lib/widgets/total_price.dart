import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  final double total;

  TotalPrice(this.total);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Total: R\$ ${total.toStringAsFixed(2)}",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
