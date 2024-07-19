import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    TextStyle displayLargeText = Theme.of(context).textTheme.displayLarge!;
    TextStyle displaySmallText = Theme.of(context).textTheme.displaySmall!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: displayLargeText.copyWith(
              fontWeight: FontWeight.w500, fontSize: 18),
        ),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Icon(Icons.arrow_back_outlined),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.save_rounded),
          ),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 400,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: Image.asset(
                "assets/details.png",
                fit: BoxFit.fill,
              ),
            ),
            Row(
              children: [
                Text(
                  """Premium
Tagerine Shirt""",
                  style: displayLargeText.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
                const Spacer(),
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                "Size",
                style: displayLargeText.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 14,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10, top: 10),
                          height: 44,
                          width: 45,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: i == 3 ? Colors.black : null,
                          ),
                          child: Text(
                            "S",
                            style: displaySmallText.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Row(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
