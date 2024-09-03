import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sulala_driver_app/core/ui/widgets/loaders/avatar_tile_loader.dart';
import 'package:sulala_driver_app/src/data/colors.dart';

class ProductColumnLoader extends StatelessWidget {
  final double ration;
  const ProductColumnLoader({super.key, this.ration = 1});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grayscale10),
          borderRadius: BorderRadius.circular(20),
          // color:
          //     AppColors.grayscale10, // Background color for the container
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: AppColors.grayscale10,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 15,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.grayscale10,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 15,
              width: 70,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.grayscale10,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 15,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: AppColors.grayscale10,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 20,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: AppColors.grayscale10,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 20,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: AppColors.grayscale10,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 34,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              // width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: AppColors.grayscale10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductGridLoader extends StatelessWidget {
  const ProductGridLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.5, // Adjust aspect ratio as needed
      ),
      itemCount: 7,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ProductColumnLoader(),
      ),
    );
  }
}

class ProductHorzLoader extends StatelessWidget {
  const ProductHorzLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.builder(
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          // return Text("data");
          return Container(
            width: 190,
            padding: EdgeInsets.all(8),
            child: ProductColumnLoader(),
          );
        },
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
