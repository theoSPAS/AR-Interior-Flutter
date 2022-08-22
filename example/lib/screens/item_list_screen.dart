import 'dart:math';
import 'package:arcore_flutter_plugin_example/screens/ar_view_screen.dart';
import 'package:flutter/material.dart';
import '../models/item_model.dart';

List mycolors = <Color>[
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.transparent,
  Colors.purple,
  Colors.orange,
  Colors.indigo,
];
Color primaryColor = mycolors[0];

class ItemListScreen extends StatefulWidget {
  @override
  State<ItemListScreen> createState() => _ItemListScreenState();
}

class _ItemListScreenState extends State<ItemListScreen> {
  List<ItemModel> items = [
    ItemModel(
      'Double Bed',
      'Double Bed with 2 Lamps',
      ['items/bed.png', 'items/bed.png'],
      12,
    ),
    ItemModel(
      'Single Sofa T55',
      'White Sofa for your Living Room',
      ['items/sofa_white.png', 'items/sofa_white.png'],
      16,
    ),
    ItemModel(
      'Double Sofa',
      'Three Seater Branded Double Sofa',
      ['items/sofa_yellow.png', 'items/sofa_yellow.png'],
      20,
    ),
    ItemModel(
      'Chair Brown',
      'Small Chair for your Backyard',
      [
        'items/pc_table.png',
        'items/pc_table.png',
      ],
      6,
    ),
    ItemModel(
      '678 Single Sofa',
      'Branded Single Yellow Sofa',
      [
        'items/single_sofa_red.png',
        'items/single_sofa_blue.png',
      ],
      10,
    ),
    ItemModel(
      'Dinner Table',
      'Beautiful Dinner Table for your family',
      [
        'items/dinner_table.png',
        'items/dinner_table.png',
      ],
      11,
    ),
    ItemModel(
      'Branded PC Table',
      'PC Table for your working/gaming space',
      [
        'items/pc_table2.png',
        'items/pc_table2.png',
      ],
      10,
    ),
    ItemModel(
      'Chair Small',
      'Small chair for your taste',
      ['items/chair2.png', 'items/chair2.png'],
      9,
    ),
    ItemModel(
      'Wooden Table',
      'Wooden Premium UK Table',
      [
        'items/table.png',
        'items/table.png',
      ],
      18,
    ),
    ItemModel(
      'Thai Double Bed',
      'High Quality Thai Bed with Locker',
      [
        'items/bed_double.png',
        'items/bed_double.png',
      ],
      14,
    ),
    ItemModel(
      'Rotable Chair',
      'Rotable High End Chair',
      [
        'items/rot_chair.png',
        'items/rot_chair_red.png',
        'items/rot_chair_blue.png',
      ],
      9,
    ),
    ItemModel(
      'UK5 Sofa',
      'Single Elagant Sofa',
      [
        'items/sofa_uk.png',
        'items/sofa_uk.png',
      ],
      10,
    ),
    ItemModel(
      'T90 Dinner Table',
      'Large and Comfortable Dinner Table',
      [
        'items/dinner_table2.png',
        'items/dinner_table2.png',
      ],
      12,
    ),
    ItemModel(
      '2 Seat Sofa',
      'Soft Sofa for Casual Break',
      [
        'items/sofa_pellow.png',
        'items/sofa_pellow.png',
      ],
      7,
    ),
    ItemModel(
      'Grey Sofa',
      '2 Seater Brand New Double Sofa',
      [
        'items/sofa_grey.png',
        'items/sofa_grey.png',
      ],
      11,
    ),
    ItemModel(
      'Chair Brown Y9',
      'Brown Chair for Seating and Relaxing',
      [
        'items/chair1.png',
        'items/chair1_blue.png',
      ],
      12,
    ),
    ItemModel(
      'HU0 Dinner Table',
      'Dinner Table with Elegant Desing',
      [
        'items/dinner_table3.png',
        'items/dinner_table3.png',
      ],
      15,
    ),
  ];

  Widget buildIconBtn(Color myColor) => Container(
        width: 30,
        child: Stack(
          children: [
            Positioned(
              top: 19.5,
              left: 11.5,
              child: Icon(
                Icons.check,
                size: 10,
                color: primaryColor == myColor ? myColor : Colors.transparent,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.circle,
                color: myColor.withOpacity(0.65),
                size: 15,
              ),
              onPressed: () {
                setState(() {
                  primaryColor = myColor;
                });
              },
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade700,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'AR ',
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                  Text(
                    'Furniture ',
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w200,
                        color: Colors.white),
                  ),
                  Text(
                    'App',
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w200,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 10, top: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ARViewScreen(
                                      itemImage: primaryColor == mycolors[1] ? items[index].pictures[1] :
                                          primaryColor == mycolors[2] ? items[index].pictures[2] : items[index].pictures[0]
                                          )));
                        },
                        child: Container(
                          height: 170,
                          width: 170,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 70,
                                      height: 70,
                                      child: Container(
                                        //color: Colors.white,
                                        child: Transform.translate(
                                          offset: Offset(10, -10),
                                          child: Transform.rotate(
                                            angle: pi / -0.50,
                                            child: Image.asset(
                                              "${items[index].pictures[0]}",
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // child: Image.asset(
                                      //   "${items[index].picture}",
                                      //   width: 60,
                                      // ),
                                    ),
                                    Row(
                                      children: [
                                        for (var i = 0; i < 3; i++)
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 2.2),
                                            child: buildIconBtn(mycolors[i]),
                                          )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 35),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(),
                                        Text(
                                          items[index].name,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                        SizedBox(height: 10,),
                                        Text(
                                          items[index].detail,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black87),
                                        ),
                                      ],
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 12.0),
                                child: Container(
                                  width: 40,
                                  child: Text(
                                    items[index].price.toString() + " \$",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.green),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                    itemCount: items.length),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
