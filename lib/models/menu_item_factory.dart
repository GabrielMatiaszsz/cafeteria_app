import 'package:cafeteria_app/models/menu_item.dart'; // Certifique-se de que o caminho está correto

class MenuItemFactory {
  static MenuItem createItem(String tipo) {
    switch (tipo) {
      case 'Café':
        return BasicMenuItem('Café', 5.0);
      case 'Bolo':
        return BasicMenuItem('Bolo', 7.0);
      case 'Suco':
        return BasicMenuItem('Suco', 6.0);
      default:
        throw Exception('Item não encontrado');
    }
  }
}
