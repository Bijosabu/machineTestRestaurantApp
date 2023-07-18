import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurantapp/application/RestaurantBloc/restaurant_bloc.dart';

import 'package:restaurantapp/presentation/HomePage/hotels_overview.dart';
import 'package:restaurantapp/presentation/LoginPage/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  Future<void> clearSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<RestaurantBloc>(context)
          .add(const RestaurantEvent.getRestaurantDetails());
    });
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[600],
          title: const Text(
            'RESTAURANTS',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            GestureDetector(
              onTap: () {
                clearSharedPreferences();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ));
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Logout',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        body: BlocBuilder<RestaurantBloc, RestaurantState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              const Center(
                child: Text(
                    'An Error Occurred.Please Check your Internet Connection'),
              );
            }

            return ListView.builder(
              itemCount: state.RestaurantList.length,
              itemBuilder: (context, index) {
                if (index < state.RestaurantList.length) {
                  return HotelsOverviewWidget(
                    rating: 4.6,
                    // rating: state.RestaurantList[index].reviews[1].rating,
                    index: index,
                    hotelImage: state.RestaurantList[index].photograph,
                    size: size,
                    address: state.RestaurantList[index].address,
                    cuisineType: state.RestaurantList[index].cuisineType,
                    hotelName: state.RestaurantList[index].name,
                  );
                } else {
                  return Container();
                }
              },
            );
          },
        ));
  }
}
