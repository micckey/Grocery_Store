import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:grocery_app/data/grocery_data.dart';

import '../models/grocery_item.dart';
import '../widgets/grocery_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorHeight = MediaQuery.of(context).size.height / 4;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        forceMaterialTransparency: true,
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(-1, -1),
            child: Container(
              width: 150,
              height: colorHeight,
              color: Colors.grey,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(1, -(colorHeight * 2) / 1000),
            child: Container(
              width: 150,
              height: colorHeight,
              color: Colors.grey,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1, (colorHeight - 100) / 1000),
            child: Container(
              width: 150,
              height: colorHeight,
              color: Colors.deepPurpleAccent,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(1, 1),
            child: Container(
              width: 200,
              height: colorHeight + 90,
              color: Colors.deepPurpleAccent,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 100,
              sigmaY: 100,
            ),
            // blendMode: BlendMode.difference,
            // enabled: true,
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/home.png',
                          height: 40,
                          width: 40,
                        ),
                        Text(
                          'Grocery Store',
                          style: TextStyle(
                              // color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/cart');
                            },
                            icon: Icon(Icons.local_grocery_store_rounded)),
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/wishlist');
                            },
                            icon: Icon(Icons.favorite)),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final itemWidth = (constraints.maxWidth / 2) - 10;
                      final itemHeight = 260;

                      List<GroceryItem> groceryItems = groceryItemsData;

                      return GridView.builder(
                        physics: BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: itemWidth / itemHeight,
                        ),
                        itemCount: groceryItems.length,
                        itemBuilder: (context, index) {
                          return GroceryCard(
                            groceryItem: groceryItems[index],
                          );
                        },
                      );
                    },
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                // ItemCard(itemWidth: itemWidth)
              ],
            ),
          ),
        ],
      )),
    );
  }
}
