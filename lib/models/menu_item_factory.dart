class MenuItemFactory {
  static MenuItem createItem(String type) {
    switch (type) {
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
