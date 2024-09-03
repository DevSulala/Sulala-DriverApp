import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CircularAvatarLoader extends StatelessWidget {
  const CircularAvatarLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Row(
        children: [
          CircleAvatar(),
          SizedBox(
            width: 14,
          ),
        ],
      ),
    );
  }
}

class CircularAvatarLoaderList extends StatelessWidget {
  const CircularAvatarLoaderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 14,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircularAvatarLoader(),
      ),
    );
  }
}
