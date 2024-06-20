// //import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:widget_app/model/productModel.dart';
// import 'view/product_detail.dart';

// void main() {
//   Provider.debugCheckInvalidValueType = null;
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//    // log("IN MainApp BUILD");
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (context) {
//             return ProductModel("url", "MacBook", 120000);
//           },
//         ),
//         ChangeNotifierProvider(
//           create: (context) {
//             return ProductPurchase(false, 1);
//           },
//         ),
//       ],
//       child: const MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: ProductDetail(),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_app/controllers/whishlist_controller.dart';

import 'controllers/product_controller.dart';
import 'view/product_details1.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return ProductContoller();
          },
        ),ChangeNotifierProvider(
          create: (context) {
            return WhishlistController();
          },
        ),

      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductDetails(),
      ),
    );
  }
}
