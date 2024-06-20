import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    log("IN MainApp BUILD");
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return Youtube(channelID: 75, channelName: "Mr.Beast");
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return ChannelDetail(subscribers: 252, videoTitle: "Experiments");
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: YoutubeDemo(),
      ),
    );
  }
}

class YoutubeDemo extends StatefulWidget {
  const YoutubeDemo({super.key});

  @override
  State createState() => _YoutubeState();
}

class _YoutubeState extends State {
  @override
  Widget build(BuildContext context) {
       log("IN YouTubeState BUILD");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumer-Demo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 118, 192, 226),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(1, 3),
                    color: Colors.black,
                    blurRadius: 4,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                Provider.of<Youtube>(context).channelName,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 25),
              height: 60,
              width: 120,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 118, 192, 226),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(1, 3),
                    color: Colors.black,
                    blurRadius: 4,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                Provider.of<Youtube>(context).channelID.toString(),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            Consumer(
              builder: (context, provider, child) {
                log("IN Consumer 1");
                return Container(
                  margin: const EdgeInsets.only(top: 25),
                  height: 60,
                  width: 120,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 118, 192, 226),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1, 3),
                        color: Colors.black,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    Provider.of<ChannelDetail>(context).subscribers.toString(),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
            Consumer(builder: (context, value, child) {
              log("IN Consumer 2");
              return Container(
                margin: const EdgeInsets.only(top: 25),
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 118, 192, 226),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(1, 3),
                      color: Colors.black,
                      blurRadius: 4,
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: Text(
                  Provider.of<ChannelDetail>(context).videoTitle,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              );
            }),
            GestureDetector(
              onTap: () {
                Provider.of<ChannelDetail>(context,listen: false).changedata(264, "Survival");
                log("------------------------------------------------------------------------------------------------------");
              },
              child: Container(
                margin: const EdgeInsets.all(70),
                height: 80,
                width: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 230, 144, 78),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(1, 3),
                      color: Colors.black,
                      blurRadius: 4,
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Change Data",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Youtube {
  String channelName;
  int channelID;
  Youtube({
    required this.channelName,
    required this.channelID,
  });
}

class ChannelDetail with ChangeNotifier {
  int subscribers;
  String videoTitle;

  ChannelDetail({
    required this.subscribers,
    required this.videoTitle,
  });

  void changedata(int subscribers, String videoTitle) {
    this.subscribers = subscribers;
    this.videoTitle = videoTitle;
    notifyListeners();
  }
}