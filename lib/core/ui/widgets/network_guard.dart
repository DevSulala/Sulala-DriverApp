import 'package:flutter/material.dart';

class NetworkGuard extends StatelessWidget {
  const NetworkGuard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/network-signal.png",
                  height: 100,
                  // scale: ,
                ),
                const Text(
                  'You are not connected to the internet',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Please check your connection and try again!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
