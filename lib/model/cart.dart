import 'package:food_app_demo/model/TaskDemoModel.dart';

class CartModel {
  //singeltant
  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;

  //
  late Skill _catalog;

  final List<int> _itemIds = [];
  set catalog(Skill newCatalog) {
    // ignore: unnecessary_null_comparison
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove Item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
