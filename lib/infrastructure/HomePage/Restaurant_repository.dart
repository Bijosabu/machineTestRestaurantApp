import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'package:restaurantapp/domain/core/failures.dart';
import 'package:restaurantapp/domain/homePage/home_page_repo.dart';
import 'package:restaurantapp/domain/homePage/models/restaurant_model.dart';

@LazySingleton(as: RestaurantRepo)
class RestaurantRepository extends RestaurantRepo {
  @override
  Future<Either<MainFailure, List<Restaurant>>> getRestaurantDetails() async {
    try {
      final response = await http.get(Uri.parse(
          'https://run.mocky.io/v3/b91498e7-c7fd-48bc-b16a-5cb970a3af8a'));
      // print(response);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // final data = jsonDecode(response.body) as List<dynamic>;
        final jsonData = jsonDecode(response.body);
        final data = jsonData['restaurants'] as List<dynamic>;

        final List<Restaurant> restaurantData =
            data.map((json) => Restaurant.fromJson(json)).toList();
        // print(restaurantData);
        return right(restaurantData);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
