
import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';

class RatingStarsReview extends StatelessWidget {
  RatingStarsReview({
    super.key,
    required this.onChanged,
    this.rating = 0,
    this.readOnly = false,
  });
  double rating;
  final Function(double) onChanged;
  bool readOnly;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedRatingStars(
        readOnly: readOnly,
        initialRating: rating,
        onChanged: onChanged,
        displayRatingValue: true, // Display the rating value
        interactiveTooltips: true, // Allow toggling half-star state
        customFilledIcon: Icons.star,
        customHalfFilledIcon: Icons.star_half,
        customEmptyIcon: Icons.star_border,
        starSize: 40,
        animationDuration: const Duration(milliseconds: 1000),
        animationCurve: Curves.linear,
      ),
    );
  }
}