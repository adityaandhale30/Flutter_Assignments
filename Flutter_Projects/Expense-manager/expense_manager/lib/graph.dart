import 'package:expense_manager/modelclass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class Piegraph extends StatefulWidget {
  const Piegraph({super.key});
  @override
  State createState() => _PiegraphState();
}

class _PiegraphState extends State {
  Map<String, double> data = {
    "Food": 650,
    "Fuel": 600,
    "Medicine": 500,
    "Entertainment": 475,
    "Shopping": 325,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pie-Chart"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 0, top: 50, bottom: 50),
            child: PieChart(
              dataMap: data,
              animationDuration: const Duration(milliseconds: 2000),
              chartType: ChartType.ring,
              chartRadius: 180,
              ringStrokeWidth: 40,
              //centerText: "Total",
              centerWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "2233",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              chartValuesOptions: const ChartValuesOptions(
                showChartValuesInPercentage: false,
                showChartValues: false,
              ),
              legendOptions: const LegendOptions(
                //legendPosition: LegendPosition.bottom,
                legendShape: BoxShape.circle,
                // showLegends: false,
              ),
            ),
          ),
          const Text(
            "------------------------------------------------------------------------------------------",
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.5),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              child: ListView.builder(
                itemCount: expenseModel.length,
                itemBuilder: (context, int i) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 10),
                    child: Row(
                      children: [
                        Image.asset(expenseModel[i].image),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          expenseModel[i].type,
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "\u20B9 ${expenseModel[i].expense}",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Icon(Icons.arrow_right)
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          const Text(
            "------------------------------------------------------------------------------------------",
            style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.5),
            ),
          ),
          // Spacer(),
          Padding(
            padding:
                const EdgeInsets.only(left: 60, right: 15, top: 20, bottom: 60),
            child: Row(
              children: [
                Text(
                  "Total",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Text(
                  "\u20B9 2233",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(Icons.arrow_right)
              ],
            ),
          ),
          //const Spacer(),
        ],
      ),
    );
  }
}
