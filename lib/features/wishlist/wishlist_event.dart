part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistEvent {}

class AddToWishListEvent extends WishlistEvent {
  final GroceryItem groceryItem;

  AddToWishListEvent({required this.groceryItem});
}

class RemoveFromWishListEvent extends WishlistEvent {
  final GroceryItem groceryItem;

  RemoveFromWishListEvent({required this.groceryItem});
}
