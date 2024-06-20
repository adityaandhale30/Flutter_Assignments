import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_app/controllers/product_controller.dart';
import 'package:widget_app/model/product_model.dart';
import 'package:widget_app/view/product_display.dart';


class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  TextEditingController urlController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: urlController,
            decoration: const InputDecoration(
              label: Text("Enter Url"),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              label: Text("Enter Name"),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          TextField(
            controller: priceController,
            decoration: const InputDecoration(
              label: Text("Enter Price"),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {
              var obj = ProductProvider(
                url: urlController.text,
                prodName: nameController.text,
                price: priceController.text,
              );

              Provider.of<ProductContoller>(context, listen: false)
                  .addProduct(pObj: obj);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProductDisplay(),
                ),
              );
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
