import 'package:flutter/material.dart';

//import 'package:widget_app/inheritedex.dart';

import 'sharedata.dart';

class AccessWidget extends StatefulWidget {
  const AccessWidget({super.key});

  @override
  State<AccessWidget> createState() => _AccessWidgetState();
}

class _AccessWidgetState extends State<AccessWidget> {
  @override
  Widget build(BuildContext context) {
    ShareData? shareDataobj = ShareData.of(context)!;

    return Scaffold(
        body: Center(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
          Text("${shareDataobj.obj?.id}"),
          Text("${shareDataobj.obj?.name}"),
          Text("${shareDataobj.obj?.username}"),
                ],
              ),
        ));
  }
}
