import 'package:flutter/material.dart';

class AlertDemo extends StatefulWidget {
  const AlertDemo({super.key});
  @override
  State createState() => _AlertState();
}

class _AlertState extends State {
  Future<dynamic> showMyDialog() async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Delete Conformation",
            ),
            content: const Text(
              "Are you want to delete selected catagorey",
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Delete"),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text("Alert-Dialogue"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("AlertDialogue"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showMyDialog();
        },
        child: const Text("Delete"),
      ),
    );
  }
}
