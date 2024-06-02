import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:store_app/core/services/hive/hive_database.dart';
import 'package:store_app/features/client/favorities/data/models/fav_model.dart';

part 'fav_state.dart';

part 'fav_cubit.freezed.dart';

class FavCubit extends Cubit<FavState> {
  FavCubit() : super(const FavState.initial());

  Future<void> handleFav({required FavModel favModel}) async {
    emit(const FavState.initial());

    final currentIndex = HiveDatabase()
        .favBox!
        .values
        .toList()
        .indexWhere((element) => element.id == favModel.id);

    if (currentIndex >= 0) {
      await HiveDatabase().favBox!.deleteAt(currentIndex);
      return;
    } else {
      await HiveDatabase().favBox!.add(favModel);
    }
    emit(const FavState.addAndRemoveFav());
  }

  bool isFav({required FavModel favModel}) =>
      HiveDatabase().favBox!.values.toList().any((e) => e.id == favModel.id);


  List<FavModel> get favList => HiveDatabase().favBox!.values.toList();
}
