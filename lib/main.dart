import 'package:flutter/material.dart';

import 'src/screens/DriverAccountInformation/driver_information_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: DriverInfoInput(),
    );
  }
}
