import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/grocery_item.dart';

part 'wishlist_event.dart';

part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final List<GroceryItem> _wishlistItems = [];

  WishlistBloc() : super(WishlistInitial()) {
    on<AddToWishListEvent>((event, emit) {
      _wishlistItems.add(event.groceryItem);
      emit(WishlistLoaded(groceryItems: List.from(_wishlistItems)));
    });

    on<RemoveFromWishListEvent>((event, emit) {
      _wishlistItems.remove(event.groceryItem);
      emit(WishlistLoaded(groceryItems: List.from(_wishlistItems)));
    });
  }
}
