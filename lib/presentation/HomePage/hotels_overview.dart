import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurantapp/application/RestaurantBloc/restaurant_bloc.dart';
import 'package:restaurantapp/constants/constants.dart';
import 'package:restaurantapp/presentation/RestaurantDetails/restaurant_details.dart';
import 'package:restaurantapp/presentation/widgets/instructions_widget.dart';

class HotelsOverviewWidget extends StatelessWidget {
  final int index;
  final String cuisineType;
  final String hotelName;
  final String address;
  final String hotelImage;
  final double rating;
  const HotelsOverviewWidget({
    super.key,
    required this.size,
    required this.cuisineType,
    required this.hotelName,
    required this.address,
    required this.hotelImage,
    required this.index,
    required this.rating,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return BlocBuilder<RestaurantBloc, RestaurantState>(
                    builder: (context, state) {
                      return RestaurantDetails(
                        image: state.RestaurantList[index].photograph,
                        hotelName: state.RestaurantList[index].name,
                        cuisineType: state.RestaurantList[index].cuisineType,
                        date: state.RestaurantList[index].reviews[index].date,
                        openTime: '',
                        review:
                            state.RestaurantList[index].reviews[index].comments,
                        reviewerName:
                            state.RestaurantList[index].reviews[index].name,
                        address: state.RestaurantList[index].address,
                      );
                    },
                  );
                },
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(image: NetworkImage(hotelImage))),
              height: size.height * 0.35,
              width: double.infinity,
            ),
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
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Row(
                      children: [
                        Text(
                          rating.toString(),
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
              )
            ],
          ),
        ),
        kHeight20,
        InstructionsWidget(
          category: cuisineType,
          icon: Icons.close_outlined,
        ),
        kHeight10,
        InstructionsWidget(
          category: address,
          icon: Icons.location_pin,
        ),
      ],
    );
  }
}
