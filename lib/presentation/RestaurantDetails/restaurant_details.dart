import 'package:flutter/material.dart';
import 'package:restaurantapp/constants/constants.dart';
import 'package:restaurantapp/domain/homePage/models/restaurant_model.dart';
import 'package:restaurantapp/presentation/RestaurantDetails/ratings_and_reviews.dart';
import 'package:restaurantapp/presentation/widgets/instructions_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class RestaurantDetails extends StatelessWidget {
  final String rating;
  final int reviewCount;
  final LatLng location;
  final String reviewerName;
  final String hotelName;
  final String cuisineType;
  final String address;
  final String openTime;
  final String date;
  final String review;
  final String image;
  const RestaurantDetails(
      {super.key,
      required this.hotelName,
      required this.cuisineType,
      required this.address,
      required this.openTime,
      required this.reviewerName,
      required this.date,
      required this.review,
      required this.image,
      required this.location,
      required this.reviewCount,
      required this.rating});
  void _openGoogleMaps() async {
    final String googleMapsUrl =
        'https://www.google.com/maps/search/?api=1&query=${location.lat},${location.lng}';

    if (await canLaunchUrl(Uri.parse(googleMapsUrl))) {
      await launchUrl(Uri.parse(googleMapsUrl));
    } else {
      // If the URL can't be opened, handle the error
      throw 'Could not launch $googleMapsUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight10,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.fill),
                  ),
                  height: size.height * 0.35,
                  width: double.infinity,
                ),
              ),
              kHeight10,
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      hotelName,
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                    const RatingWidget(rating: '4.5')
                  ],
                ),
              ),
              kHeight20,
              InstructionsWidget(
                  category: cuisineType, icon: Icons.close_outlined),
              kHeight10,
              InstructionsWidget(category: address, icon: Icons.location_pin),
              ElevatedButton(
                  onPressed: () {
                    _openGoogleMaps();
                  },
                  child: const Text('Get Directions')),
              kHeight10,
              InstructionsWidget(category: openTime, icon: Icons.access_time),
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Ratings and Reviews',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900]),
                    ),
                  ),
                ],
              ),
              kHeight5,
              SizedBox(
                height: size.height * 0.4,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: reviewCount,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.grey,
                      thickness: 0.8,
                    );
                  },
                  itemBuilder: (context, index) {
                    return RatingsAndReviews(
                      rating: rating,
                      date: date,
                      review: review,
                      name: reviewerName,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class RatingWidget extends StatelessWidget {
//   final String rating;
//   const RatingWidget({
//     super.key,
//     required this.rating,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 10),
//       child: Container(
//         decoration: BoxDecoration(
//             color: Colors.green, borderRadius: BorderRadius.circular(10)),
//         child: Padding(
//           padding: const EdgeInsets.all(4),
//           child: Row(
//             children: [
//               Text(
//                 rating,
//                 style: const TextStyle(
//                     fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//               kHeight5,
//               const Icon(
//                 Icons.star,
//                 color: Colors.white,
//                 size: 16,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
