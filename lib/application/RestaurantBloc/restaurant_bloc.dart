import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurantapp/domain/core/failures.dart';
import 'package:restaurantapp/domain/homePage/home_page_repo.dart';
import 'package:restaurantapp/domain/homePage/models/restaurant_model.dart';

part 'restaurant_event.dart';
part 'restaurant_state.dart';
part 'restaurant_bloc.freezed.dart';

@injectable
class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  final RestaurantRepo _restaurantRepo;
  RestaurantBloc(this._restaurantRepo) : super(RestaurantState.initial()) {
    on<_GetRestaurantDetails>(
      (event, emit) async {
        emit(
          state.copyWith(
            RestaurantList: [],
            isLoading: true,
            isError: false,
          ),
        );
        final Either<MainFailure, List<Restaurant>> restaurantDetails =
            await _restaurantRepo.getRestaurantDetails();
        emit(restaurantDetails.fold(
          (failure) => state.copyWith(
            isLoading: false,
            RestaurantList: [],
            isError: false,
          ),
          (success) => state.copyWith(
            isLoading: false,
            RestaurantList: success,
            isError: true,
          ),
        ));
      },
    );
  }
}
