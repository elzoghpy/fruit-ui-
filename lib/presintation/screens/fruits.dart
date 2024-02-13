import 'package:flutter/material.dart';
import 'package:fruits/constants/resources/asset_manegar.dart';
import 'package:fruits/constants/resources/mycolors.dart';
import 'package:fruits/constants/resources/strings.dart';

class FruitsScreen extends StatelessWidget {
  const FruitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          const Image(
            image: AssetImage(
              ImageAssets.five,
              // ImageAssets.splash0Image,
            ),
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, mainView);
                            },
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 22,
                              child: Icon(Icons.arrow_back),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 0, top: 48),
                            child: Row(
                              children: [
                                Text(
                                  'Premium',
                                  style: TextStyle(
                                      color: MyColors.green, fontSize: 16),
                                ),
                                ImageIcon(
                                  AssetImage(ImageAssets.twelve),
                                  color: MyColors.green,
                                  size: 16,
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
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'products',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
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
                                  padding: EdgeInsets.only(left: 50, top: 5),
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
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      " Exotic fruits",
                      style: TextStyle(
                          fontSize: 40,
                          wordSpacing: 5,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "Pitaya",
                        style: TextStyle(
                            fontSize: 40,
                            wordSpacing: 5,
                            letterSpacing: 5,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      border: Border(
                        top: BorderSide(
                          color: MyColors.green,
                          width: 2.0,
                        ),
                        left: BorderSide(color: MyColors.green, width: 2.0),
                        right: BorderSide(color: MyColors.green, width: 2.0),
                        bottom: BorderSide(
                          color: MyColors.green,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: const Align(
                      child: Text(
                        "Nutrition",
                        style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1,
                            fontWeight: FontWeight.normal,
                            color: MyColors.green),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 180,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 5.0,
                        backgroundColor: MyColors.green,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Text(
                            'SELECT',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'QUANTITY',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 480,
              right: 30,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: -90,
                  bottom: -190,
                  child: Container(
                    height: 500,
                    padding: const EdgeInsets.all(60),
                    width: 270,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border(
                        top: BorderSide(
                          color: Color.fromARGB(255, 81, 81, 81),
                          width: 2.0,
                        ),
                        left: BorderSide(
                            color: Color.fromARGB(255, 81, 81, 81), width: 2.0),
                        right: BorderSide(
                            color: Color.fromARGB(255, 81, 81, 81), width: 2.0),
                        bottom: BorderSide(
                          color: Color.fromARGB(255, 81, 81, 81),
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                ),
                // const CircleAvatar()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 415, left: 45),
            child: CustomPaint(
              size: Size(
                  270,
                  (240 * 1.4285714285714286)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 700, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('24.9', style: TextStyle(fontSize: 25)),
                Text('5 pack'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 575),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 60),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[600],
                    child: const Text('1'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 100, top: 10),
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: Text('5'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160, top: 50),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[600],
                    child: const Text('10'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 670, left: 310),
            child: Container(
              height: 110,
              width: 80,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'add to',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'order',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3127643, size.height * 0.6864450);
    path_0.cubicTo(
        size.width * 0.3835643,
        size.height * 0.7442850,
        size.width * 0.3835643,
        size.height * 0.7442850,
        size.width * 0.4071643,
        size.height * 0.7635600);
    path_0.cubicTo(
        size.width * 0.3667071,
        size.height * 0.7708400,
        size.width * 0.2766571,
        size.height * 0.8046000,
        size.width * 0.2453429,
        size.height * 0.8490000);
    path_0.cubicTo(
        size.width * 0.2259714,
        size.height * 0.8324400,
        size.width * 0.1886000,
        size.height * 0.8022000,
        size.width * 0.1678571,
        size.height * 0.7827600);
    path_0.cubicTo(
        size.width * 0.2310571,
        size.height * 0.7705200,
        size.width * 0.2790571,
        size.height * 0.7420450,
        size.width * 0.3127643,
        size.height * 0.6864450);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(4, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
