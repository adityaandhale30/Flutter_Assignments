import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_app/controllers/product_controller.dart';
import 'package:widget_app/view/wishListScreen.dart';

class ProductDisplay extends StatefulWidget {
  const ProductDisplay({super.key});

  @override
  State createState() => _ProductDisplayState();
}

class _ProductDisplayState extends State {
  @override
  Widget build(BuildContext context) {
    ProductContoller obj = Provider.of<ProductContoller>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("MultiProvider- Demo"),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const WhishListDisplay(),
              ),
            );
          },
          child: const Icon(Icons.favorite),
        ),
      ),
      body: ListView.builder(
        itemCount: productDetailList.length,
        itemBuilder: (context, i) {
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
                    obj.obj!.url!,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  obj.obj!.prodName!,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(obj.obj!.price!.toString()),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed:
                          Provider.of<ProductContoller>(context).toggleFavorite,
                      icon: obj.obj!.isFavorite
                          ? const Icon(Icons.favorite_rounded)
                          : const Icon(Icons.favorite_outline_outlined),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    ElevatedButton(
                      onPressed: Provider.of<ProductContoller>(context)
                          .incrementCounter,
                      child: const Text("+"),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      obj.obj!.count.toString(),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: Provider.of<ProductContoller>(context)
                          .decrementCounter,
                      child: const Text("-"),
                    ),
                  ],
                )
              ],
            ),
          ],
        );
      },),
    );
  }
}
