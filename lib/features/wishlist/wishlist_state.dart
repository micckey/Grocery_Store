part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistState {}

final class WishlistInitial extends WishlistState {}

final class WishlistLoading extends WishlistState {}

final class WishlistLoaded extends WishlistState {
  final List<GroceryItem> groceryItems;

  WishlistLoaded({required this.groceryItems});
}

final class WishlistError extends WishlistState {}
