import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/cart/cart_bloc.dart';
import '../widgets/user_list_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorHeight = MediaQuery.of(context).size.height / 4;

    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back)),
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
                    Center(
                        child: Text(
                      'Cart',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    )),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: () {
                        if (state is CartLoaded) {
                          final items = state.groceryItems;

                          if (items.isEmpty) {
                            return Center(child: Text("Cart is empty"));
                          }

                          return ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: items.length,
                            itemBuilder: (context, index) {
                              final item = items[index];
                              return UserListCard(
                                item: item,
                                onRemove: () {
                                  BlocProvider.of<CartBloc>(context).add(
                                      RemoveFromCartEvent(groceryItem: item));
                                },
                              );
                            },
                          );
                        } else if (state is CartInitial) {
                          return Center(child: Text("Cart is empty"));
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      }(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
            ],
          )),
        );
      },
    );
  }
}
