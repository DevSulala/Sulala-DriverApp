import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CircleAvatarWithTitleLoader extends StatelessWidget {
  final double ration;
  const CircleAvatarWithTitleLoader({super.key, this.ration = 1});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
          ),
          SizedBox(height: 12),
          Container(
            height: 16,
            width: 70,
            decoration: BoxDecoration(
              color: Theme.of(context).highlightColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}

class CircleAvatarWithTitleLoaderList extends StatelessWidget {
  final Axis direction;
  final double ration;
  const CircleAvatarWithTitleLoaderList(
      {super.key, this.direction = Axis.horizontal, this.ration = 1});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      scrollDirection: direction,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircleAvatarWithTitleLoader(ration: ration),
      ),
    );
  }
}

class CircleAvatarGridLoader extends StatelessWidget {
  const CircleAvatarGridLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75, // Adjust aspect ratio as needed
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatarWithTitleLoader(),
          );
        });
  }
}
