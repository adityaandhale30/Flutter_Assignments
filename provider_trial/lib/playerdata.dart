import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class playerData extends InheritedWidget {
  Player? obj = Player();

  playerData({super.key, this.obj, required super.child});

  @override
  bool updateShouldNotify(playerData oldWidget) {
    return obj?.iPLteam != oldWidget.obj?.iPLteam;
  }

  static playerData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<playerData>()!;
  }
}

class Player {
  String? playerName = "Rohit Sharma";
  String? country = "India";
  String? iPLteam = "DC";
  Player({
    this.country,
    this.iPLteam,
    this.playerName,
  });
}
