import 'package:flutter/material.dart';
import 'package:restaurantapp/constants/constants.dart';
import 'package:restaurantapp/presentation/RestaurantDetails/restaurant_details.dart';
import 'package:readmore/readmore.dart';

class RatingsAndReviews extends StatelessWidget {
  final String name;
  final String rating;
  final String review;
  final String date;
  const RatingsAndReviews(
      {super.key,
      required this.name,
      required this.review,
      required this.date,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              RatingWidget(rating: rating),
              Text(name),
            ],
          ),
        ),
        kHeight5,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ReadMoreText(
            review,
            trimLines: 2,
            // colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'Show more',
            trimExpandedText: 'Show less',
            // style: TextStyle(fontWeight: FontWeight.bold),
            moreStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(date),
            ),
          ],
        )
      ],
    );
  }
}

class RatingWidget extends StatelessWidget {
  final String rating;
  const RatingWidget({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              Text(
                rating,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),
              ),
              kHeight5,
              const Icon(
                Icons.star,
                color: Colors.white,
                size: 16,
              )
            ],
          ),
        ),
      ),
    );
  }
}
