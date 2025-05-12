part of 'cart_bloc.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

final class CartLoading extends CartState {}

final class CartLoaded extends CartState {
  final List<GroceryItem> groceryItems;

  CartLoaded({required this.groceryItems});
}

final class CartError extends CartState {}
