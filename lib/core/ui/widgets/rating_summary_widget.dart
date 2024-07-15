import 'package:flutter/material.dart';
import 'package:sulala_driver_app/core/models/rating_analysis.dart';
import 'package:sulala_driver_app/src/data/colors.dart';
import 'package:sulala_driver_app/src/screens/data/fonts.dart';

class RatingSummaryWidget extends StatelessWidget {
  final RatingAnalysis rates;
  final int? rateCount;
  final int? rating;

  const RatingSummaryWidget({
    Key? key,
    required this.rates,
    required this.rateCount,
    this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int totalReviews = rateCount ?? 0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Ratings',
              style: AppFonts.title5(
                color: AppColors.grayscale90,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '($totalReviews)',
              style: AppFonts.title5(
                color: AppColors.grayscale90,
              ),
            ),
            const Spacer(),
            const Icon(Icons.star, size: 30, color: AppColors.secondary50),
            Text(
              '${rating?.toStringAsFixed(1)}',
              style: AppFonts.title4(
                color: AppColors.grayscale90,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        _buildRatingBar('5', rates.five_star_percentage),
        const SizedBox(
          height: 8,
        ),
        _buildRatingBar('4', rates.four_star_percentage),
        const SizedBox(
          height: 8,
        ),
        _buildRatingBar('3', rates.three_star_percentage),
        const SizedBox(
          height: 8,
        ),
        _buildRatingBar('2', rates.two_star_percentage),
        const SizedBox(
          height: 8,
        ),
        _buildRatingBar('1', rates.one_star_percentage),
        const SizedBox(
          height: 8,
        ),
        const Divider(),
      ],
    );
  }

  double calculateAverageRating(List<int> starCounts) {
    final totalSum = 5 * starCounts[4] +
        4 * starCounts[3] +
        3 * starCounts[2] +
        2 * starCounts[1] +
        1 * starCounts[0];
    final totalCount = starCounts.reduce((value, element) => value + element);
    return totalSum / totalCount;
  }

  Widget _buildRatingBar(String label, int total) {
    // final double percentage = count / total;
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(width: 5),
        const Icon(Icons.star, size: 20, color: AppColors.secondary50),
        const SizedBox(width: 10),
        Expanded(
          child: LinearProgressIndicator(
            minHeight: 6,
            borderRadius: BorderRadius.circular(30),
            value: total.toDouble(),
            backgroundColor: AppColors.grayscale20,
            valueColor:
                const AlwaysStoppedAnimation<Color>(AppColors.secondary50),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          '${(total).toStringAsFixed(1)}%',
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
