import 'package:flutter/material.dart';
import 'package:widget_app/controllers/whishlist_controller.dart';
import 'package:widget_app/model/product_model.dart';

List<ProductProvider?> productDetailList = [];

class ProductContoller with ChangeNotifier {
  ProductProvider? obj;
  void incrementCounter() {
    obj!.count++;
    notifyListeners();
  }

  void decrementCounter() {
    obj!.count--;
    notifyListeners();
  }

  void toggleFavorite() {
    if (obj!.isFavorite == false) {
      obj!.isFavorite = true;
      wishList_list.add(obj);
    } else {
      wishList_list.remove(obj);
      obj!.isFavorite = false;
    }
    notifyListeners();
  }

  void addProduct({required ProductProvider pObj}) {
    obj = pObj;
    productDetailList.add(obj);
  }
}
