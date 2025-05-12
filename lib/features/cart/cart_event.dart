part of 'cart_bloc.dart';

@immutable
sealed class CartEvent {}

class AddToCartEvent extends CartEvent {
  final GroceryItem groceryItem;

  AddToCartEvent({required this.groceryItem});
}

class RemoveFromCartEvent extends CartEvent {
  final GroceryItem groceryItem;

  RemoveFromCartEvent({required this.groceryItem});
}
