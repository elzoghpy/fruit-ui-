import 'package:flutter/material.dart';
import 'package:fruits/approuter.dart';

void main() {
  runApp(Fruits(
    appRouter: AppRouter(),
  ));
}

class Fruits extends StatelessWidget {
  final AppRouter appRouter;
  const Fruits({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
