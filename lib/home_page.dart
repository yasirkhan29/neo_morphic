import 'package:flutter/material.dart';
import 'package:neo_morphic/custom_container.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomContaner(
                        height: 60, width: 60, child: Icon(Icons.arrow_back)),
                    Text("PLAY LIST"),
                    CustomContaner(
                        height: 60, width: 60, child: Icon(Icons.menu)),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                CustomContaner(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset(
                        "images/nn.jpg",
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "AVENGER SONGS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20),
                                ),
                                Text(
                                  "Kesariya",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("0.00"),
                    Icon(Icons.shuffle),
                    Icon(Icons.repeat),
                    Text("4.22"),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CustomContaner(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.8,
                    backgroundColor: Colors.grey,
                    progressColor: Colors.green,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: CustomContaner(child: Icon(Icons.skip_next))),
                      SizedBox(
                        width: 7,
                      ),
                      Expanded(child: CustomContaner(child: Icon(Icons.stop))),
                      SizedBox(
                        width: 7,
                      ),
                      Expanded(
                          child:
                              CustomContaner(child: Icon(Icons.skip_previous))),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
