import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListTileLoader extends StatelessWidget {
  const ListTileLoader({super.key});

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
          Expanded(
            child: Container(
              height: 14,
              color: Theme.of(context).highlightColor,
            ),
          ),
          SizedBox(
            width: 14,
          ),
        ],
      ),
    );
  }
}

class ListTileLoaderList extends StatelessWidget {
  const ListTileLoaderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 14,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTileLoader(),
            ),
          ),
        ),
      ],
    );
  }
}
