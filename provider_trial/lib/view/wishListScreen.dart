// ignore: file_names
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_app/controllers/product_controller.dart';
import 'package:widget_app/controllers/whishlist_controller.dart';

class WhishListDisplay extends StatefulWidget {
  const WhishListDisplay({super.key});

  @override
  State createState() => _WhishListDisplayState();
}

class _WhishListDisplayState extends State {
  @override
  Widget build(BuildContext context) {
    ProductContoller obj = Provider.of<ProductContoller>(context);
    return Scaffold(
      body: Consumer(builder: (context, value, child) {
        return ListView.builder(
            itemCount: wishList_list.length,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 400,
                        width: 400,
                        child: Image.network(
                          "${wishList_list[index]!.url}",
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${wishList_list[index]!.prodName}",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(wishList_list[index]!.price.toString()),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Provider.of<WhishlistController>(context,listen:false)
                                  .toggleFavorite(wishList_list[index]!);
                            },
                            icon: obj.obj!.isFavorite
                                ? const Icon(Icons.favorite_rounded)
                                : const Icon(Icons.favorite_outline_outlined),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              );
            });
      }),
    );
  }
}
