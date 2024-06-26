import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffectOrdersWidget extends StatelessWidget {
  const ShimmerEffectOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 20,
                    color: Colors.grey[300],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 60,
                  height: 20,
                  color: Colors.grey[300],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey[300],
                    ),
                    height: 100,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
