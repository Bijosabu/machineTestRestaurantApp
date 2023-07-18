import 'package:dartz/dartz.dart';
import 'package:restaurantapp/domain/core/failures.dart';
import 'package:restaurantapp/domain/homePage/models/restaurant_model.dart';

abstract class RestaurantRepo {
  Future<Either<MainFailure, List<Restaurant>>> getRestaurantDetails();
}
