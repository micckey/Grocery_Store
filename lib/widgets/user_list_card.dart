import 'package:flutter/material.dart';

import '../models/grocery_item.dart';

class UserListCard extends StatelessWidget {
  final GroceryItem item;
  final VoidCallback onRemove;

  const UserListCard({
    super.key,
    required this.item,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.35),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              IconButton(
                onPressed: onRemove, // Call onRemove when delete is tapped
                icon: Icon(
                  Icons.delete_forever_outlined,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Text(
            item.description,
            maxLines: 2,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'KES ${item.price}',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}
