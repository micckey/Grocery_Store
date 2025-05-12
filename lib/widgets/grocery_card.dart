import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_app/features/wishlist/wishlist_bloc.dart';
import 'package:grocery_app/features/wishlist/wishlist_bloc.dart';
import 'package:grocery_app/models/grocery_item.dart';

import '../features/cart/cart_bloc.dart';

class GroceryCard extends StatelessWidget {
  final GroceryItem groceryItem;

  const GroceryCard({super.key, required this.groceryItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.85),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              groceryItem.imageUrl,
              height: 140,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            groceryItem.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            groceryItem.description,
            maxLines: 2,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'KES ${groceryItem.price}',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              Spacer(),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  bool isInCart = false;

                  if (state is CartLoaded) {
                    isInCart = state.groceryItems.contains(groceryItem);
                  }

                  return GestureDetector(
                    onTap: () {
                      isInCart
                          ? BlocProvider.of<CartBloc>(context).add(
                              RemoveFromCartEvent(groceryItem: groceryItem))
                          : BlocProvider.of<CartBloc>(context)
                              .add(AddToCartEvent(groceryItem: groceryItem));
                    },
                    child: Icon(
                      isInCart
                          ? Icons.local_grocery_store_rounded
                          : Icons.local_grocery_store_outlined,
                      size: 18,
                      color: Colors.grey[600], // 👈 change color
                    ),
                  );
                },
              ),
              SizedBox(
                width: 10,
              ),
              BlocBuilder<WishlistBloc, WishlistState>(
                builder: (context, state) {
                  bool isInWishList = false;

                  if (state is WishlistLoaded) {
                    isInWishList = state.groceryItems.contains(groceryItem);
                  }

                  return GestureDetector(
                    onTap: () {
                      isInWishList
                          ? BlocProvider.of<WishlistBloc>(context).add(
                              RemoveFromWishListEvent(groceryItem: groceryItem))
                          : BlocProvider.of<WishlistBloc>(context).add(
                              AddToWishListEvent(groceryItem: groceryItem));
                    },
                    child: Icon(
                      isInWishList ? Icons.favorite : Icons.favorite_border,
                      size: 18,
                      color: Colors.grey[600],
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
