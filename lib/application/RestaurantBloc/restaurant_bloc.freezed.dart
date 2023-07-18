// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RestaurantEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRestaurantDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRestaurantDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRestaurantDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRestaurantDetails value) getRestaurantDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRestaurantDetails value)? getRestaurantDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRestaurantDetails value)? getRestaurantDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantEventCopyWith<$Res> {
  factory $RestaurantEventCopyWith(
          RestaurantEvent value, $Res Function(RestaurantEvent) then) =
      _$RestaurantEventCopyWithImpl<$Res, RestaurantEvent>;
}

/// @nodoc
class _$RestaurantEventCopyWithImpl<$Res, $Val extends RestaurantEvent>
    implements $RestaurantEventCopyWith<$Res> {
  _$RestaurantEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetRestaurantDetailsCopyWith<$Res> {
  factory _$$_GetRestaurantDetailsCopyWith(_$_GetRestaurantDetails value,
          $Res Function(_$_GetRestaurantDetails) then) =
      __$$_GetRestaurantDetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetRestaurantDetailsCopyWithImpl<$Res>
    extends _$RestaurantEventCopyWithImpl<$Res, _$_GetRestaurantDetails>
    implements _$$_GetRestaurantDetailsCopyWith<$Res> {
  __$$_GetRestaurantDetailsCopyWithImpl(_$_GetRestaurantDetails _value,
      $Res Function(_$_GetRestaurantDetails) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetRestaurantDetails implements _GetRestaurantDetails {
  const _$_GetRestaurantDetails();

  @override
  String toString() {
    return 'RestaurantEvent.getRestaurantDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetRestaurantDetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRestaurantDetails,
  }) {
    return getRestaurantDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRestaurantDetails,
  }) {
    return getRestaurantDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRestaurantDetails,
    required TResult orElse(),
  }) {
    if (getRestaurantDetails != null) {
      return getRestaurantDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRestaurantDetails value) getRestaurantDetails,
  }) {
    return getRestaurantDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRestaurantDetails value)? getRestaurantDetails,
  }) {
    return getRestaurantDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRestaurantDetails value)? getRestaurantDetails,
    required TResult orElse(),
  }) {
    if (getRestaurantDetails != null) {
      return getRestaurantDetails(this);
    }
    return orElse();
  }
}

abstract class _GetRestaurantDetails implements RestaurantEvent {
  const factory _GetRestaurantDetails() = _$_GetRestaurantDetails;
}

/// @nodoc
mixin _$RestaurantState {
  List<Restaurant> get RestaurantList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantStateCopyWith<RestaurantState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantStateCopyWith<$Res> {
  factory $RestaurantStateCopyWith(
          RestaurantState value, $Res Function(RestaurantState) then) =
      _$RestaurantStateCopyWithImpl<$Res, RestaurantState>;
  @useResult
  $Res call({List<Restaurant> RestaurantList, bool isLoading, bool isError});
}

/// @nodoc
class _$RestaurantStateCopyWithImpl<$Res, $Val extends RestaurantState>
    implements $RestaurantStateCopyWith<$Res> {
  _$RestaurantStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? RestaurantList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      RestaurantList: null == RestaurantList
          ? _value.RestaurantList
          : RestaurantList // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RestaurantStateCopyWith<$Res>
    implements $RestaurantStateCopyWith<$Res> {
  factory _$$_RestaurantStateCopyWith(
          _$_RestaurantState value, $Res Function(_$_RestaurantState) then) =
      __$$_RestaurantStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Restaurant> RestaurantList, bool isLoading, bool isError});
}

/// @nodoc
class __$$_RestaurantStateCopyWithImpl<$Res>
    extends _$RestaurantStateCopyWithImpl<$Res, _$_RestaurantState>
    implements _$$_RestaurantStateCopyWith<$Res> {
  __$$_RestaurantStateCopyWithImpl(
      _$_RestaurantState _value, $Res Function(_$_RestaurantState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? RestaurantList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_RestaurantState(
      RestaurantList: null == RestaurantList
          ? _value._RestaurantList
          : RestaurantList // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RestaurantState implements _RestaurantState {
  const _$_RestaurantState(
      {required final List<Restaurant> RestaurantList,
      required this.isLoading,
      required this.isError})
      : _RestaurantList = RestaurantList;

  final List<Restaurant> _RestaurantList;
  @override
  List<Restaurant> get RestaurantList {
    if (_RestaurantList is EqualUnmodifiableListView) return _RestaurantList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_RestaurantList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'RestaurantState(RestaurantList: $RestaurantList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantState &&
            const DeepCollectionEquality()
                .equals(other._RestaurantList, _RestaurantList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_RestaurantList), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantStateCopyWith<_$_RestaurantState> get copyWith =>
      __$$_RestaurantStateCopyWithImpl<_$_RestaurantState>(this, _$identity);
}

abstract class _RestaurantState implements RestaurantState {
  const factory _RestaurantState(
      {required final List<Restaurant> RestaurantList,
      required final bool isLoading,
      required final bool isError}) = _$_RestaurantState;

  @override
  List<Restaurant> get RestaurantList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantStateCopyWith<_$_RestaurantState> get copyWith =>
      throw _privateConstructorUsedError;
}
