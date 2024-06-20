import 'package:flutter/material.dart';
import 'package:widget_app/model/product_model.dart';

//import '../model/wishList_model.dart';

List<ProductProvider?> wishList_list = [];

class WhishlistController with ChangeNotifier {
  void toggleFavorite(ProductProvider obj) {
    if (obj.isFavorite == false) {
      obj.isFavorite = true;
    } else {
      obj.isFavorite = false;

      wishList_list.remove(obj);
    }

    notifyListeners();
  }
}
