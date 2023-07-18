part of 'restaurant_bloc.dart';

@freezed
class RestaurantState with _$RestaurantState {
  const factory RestaurantState({
    required List<Restaurant> RestaurantList,
    required bool isLoading,
    required bool isError,
  }) = _RestaurantState;
  factory RestaurantState.initial() {
    return const RestaurantState(
        RestaurantList: [], isLoading: false, isError: false);
  }
}
