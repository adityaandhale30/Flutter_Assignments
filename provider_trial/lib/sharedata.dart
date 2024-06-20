// ShareData class

import 'package:flutter/material.dart';

import 'employee.dart';

class ShareData extends InheritedWidget {
  final Employee? obj;

  const ShareData({super.key, required this.obj, required super.child});

  @override
  bool updateShouldNotify(ShareData oldWidget) {
    return (obj?.id != oldWidget.obj?.id);
  }

  static ShareData? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareData>()!;
  }
}


