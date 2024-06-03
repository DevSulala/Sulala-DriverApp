import 'package:flutter/material.dart';

import 'package:slide_action/slide_action.dart';


import '../../data/colors.dart';
import '../data/fonts.dart';

class AssignDriverSwiper extends StatefulWidget {
  const AssignDriverSwiper({
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AssignDriverSwiperState createState() => _AssignDriverSwiperState();
}

class _AssignDriverSwiperState extends State<AssignDriverSwiper> {
  bool _swipeCompleted = false;

  @override
  Widget build(BuildContext context) {
    return _swipeCompleted
        ? Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: AppColors.grayscale20,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Text(
                'Assigned To Me',
                style: AppFonts.body1(color: AppColors.grayscale90),
              ),
            ),
          )
        : SlideAction(
            thumbHitTestBehavior: HitTestBehavior.translucent,
            trackHeight: 65,
            trackBuilder: (context, state) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.primary30,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Assign To Me",
                    style: AppFonts.body1(color: AppColors.grayscale0),
                  ),
                ),
              );
            },
            thumbBuilder: (context, state) {
              return Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.grayscale0,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Icon(
                    Icons.delivery_dining,
                    color: Colors.black,
                  ),
                ),
              );
            },
            action: () {
              setState(() {
                _swipeCompleted = true;
              });
              debugPrint("Hello World");
            },
          );
  }
}
