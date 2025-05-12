import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/grocery_item.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final List<GroceryItem> _cartItems = [];

  CartBloc() : super(CartInitial()) {
    on<AddToCartEvent>((event, emit) {
      _cartItems.add(event.groceryItem);
      emit(CartLoaded(groceryItems: List.from(_cartItems)));
    });

    on<RemoveFromCartEvent>((event, emit) {
      _cartItems.remove(event.groceryItem);
      emit(CartLoaded(groceryItems: List.from(_cartItems)));
    });
  }
}
