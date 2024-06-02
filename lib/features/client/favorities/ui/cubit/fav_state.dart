part of 'fav_cubit.dart';

@freezed
class FavState with _$FavState {
  const factory FavState.initial() = _Initial;
  const factory FavState.addAndRemoveFav() = AddAndRemoveFav;
}
