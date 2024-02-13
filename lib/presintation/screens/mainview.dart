import 'package:flutter/material.dart';
import 'package:fruits/constants/resources/asset_manegar.dart';
import 'package:fruits/constants/resources/mycolors.dart';
import 'package:fruits/presintation/screens/home_screen.dart';
import 'package:fruits/presintation/screens/premium.dart';
import 'package:fruits/presintation/screens/search.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<Widget> pages = [
    HomeScreen(),
    const SearchScreen(),
    const PremiumScreen(),
  ];

  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.grey2,
      body: pages[currentIndex],
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 64,
              decoration: const BoxDecoration(
                color: MyColors.grey2,
                // borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0),
                  bottomRight: Radius.circular(50.0),
                ),
                child: BottomNavigationBar(
                  selectedItemColor: MyColors.green,
                  unselectedItemColor: Colors.white,
                  backgroundColor: Colors.black,
                  type: BottomNavigationBarType.fixed,
                  onTap: onTap,
                  currentIndex: currentIndex,
                  items: [
                    BottomNavigationBarItem(
                      icon: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.grey[600],
                          child: const ImageIcon(
                            AssetImage(ImageAssets.eleven),
                            color: Colors.white,
                          )),
                      label: 'home',
                    ),
                    BottomNavigationBarItem(
                        icon: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey[600],
                            child: const ImageIcon(
                              AssetImage(ImageAssets.ten),
                              color: Colors.white,
                            )),
                        label: 'search'),
                    BottomNavigationBarItem(
                        icon: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey[600],
                            child: const ImageIcon(
                              AssetImage(ImageAssets.twelve),
                              color: Colors.white,
                            )),
                        label: 'Premium'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
