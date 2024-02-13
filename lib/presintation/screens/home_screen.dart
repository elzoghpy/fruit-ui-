// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:fruits/constants/resources/asset_manegar.dart';
import 'package:fruits/constants/resources/mycolors.dart';
import 'package:fruits/constants/resources/strings.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> Images = [
    ImageAssets.three,
    ImageAssets.sven,
    ImageAssets.fore,
  ];
  List<String> CategoriesName = [];

  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey2,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30, bottom: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Stack(
                            children: [
                              CircleAvatar(
                                  radius: 80.5,
                                  backgroundColor: Colors.grey,
                                  child: CircleAvatar(
                                    radius: 80,
                                    backgroundColor: MyColors.grey2,
                                    child: CircleAvatar(
                                      radius: 52.5,
                                      backgroundColor: MyColors.green,
                                      child: CircleAvatar(
                                        radius: 52,
                                        backgroundColor: MyColors.grey2,
                                        child: CircleAvatar(
                                          radius: 34,
                                          backgroundColor: Colors.amber,
                                          child: CircleAvatar(
                                            radius: 33,
                                            backgroundImage: AssetImage(
                                              ImageAssets.thirty,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(left: 40, top: 120),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Exotic',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 100,
                            width: 80,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Container(
                                        height: 80,
                                        width: 80,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)),
                                            color: Colors.white),
                                        child: const Padding(
                                          padding: EdgeInsets.only(top: 20),
                                          child: Column(
                                            children: [
                                              Text(
                                                '10',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'products',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.black,
                                        child: Icon(
                                          Icons.shopping_bag_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 50, top: 5),
                                      child: CircleAvatar(
                                        radius: 5.0,
                                        backgroundColor: MyColors.green,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45, right: 30),
                  child: Row(
                    children: [
                      const Text(
                        'Fruits',
                        style: TextStyle(
                            color: MyColors.green,
                            fontSize: 35,
                            fontWeight: FontWeight.normal),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'see more',
                            style: TextStyle(
                                color: MyColors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.normal),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 220,
                        decoration: const BoxDecoration(),
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: Images.length,
                            itemBuilder: (BuildContext context, int index) {
                              String category = Images[index];
                              // String categoriesName = CategoriesName[index];
                              return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, fruit);
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 10),
                                      child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 60),
                                            child: Container(
                                              width: 130,
                                              height: 140,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[600],
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  20),
                                                          topRight:
                                                              Radius.circular(
                                                                  20),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  20),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  50))),
                                              child: const Padding(
                                                padding: EdgeInsets.only(
                                                    top: 30, left: 10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Papaya',
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          color: Colors.white),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'premium',
                                                          style: TextStyle(
                                                            color:
                                                                MyColors.green,
                                                          ),
                                                        ),
                                                        ImageIcon(
                                                          AssetImage(ImageAssets
                                                              .twelve),
                                                          color: MyColors.green,
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .currency_pound_outlined,
                                                          size: 18,
                                                          color: Colors.white,
                                                        ),
                                                        Text(
                                                          '4.25',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Image.asset(
                                                category,
                                                fit: BoxFit.cover,
                                                width: 140,
                                                height: 95,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    top: 70, left: 130),
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  radius: 18,
                                                  child: Icon(Icons
                                                      .arrow_forward_rounded),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 45, right: 30, top: 20),
                      child: Row(
                        children: [
                          const Text(
                            'Offers',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.normal),
                          ),
                          const Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'see more',
                                style: TextStyle(
                                    color: MyColors.green,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey[600],
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(50))),
                            child: const Padding(
                              padding: EdgeInsets.only(top: 5, left: 10),
                              child: Row(
                                children: [
                                  Image(
                                    image: AssetImage(ImageAssets.six),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Papaya',
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'premium',
                                            style: TextStyle(
                                              color: MyColors.green,
                                            ),
                                          ),
                                          ImageIcon(
                                            AssetImage(ImageAssets.twelve),
                                            color: MyColors.green,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.currency_pound_outlined,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '4.25',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 60, left: 320),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 18,
                              child: Icon(Icons.arrow_forward_rounded),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// const Row(
//                           children: [
//                             ImageIcon(
//                               AssetImage(ImageAssets.nine),
//                               color: Colors.white,
//                             ),
//                             Spacer(),
//                             Icon(
//                               Icons.notifications_none_outlined,
//                               color: Colors.white,
//                             )
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         // ),
