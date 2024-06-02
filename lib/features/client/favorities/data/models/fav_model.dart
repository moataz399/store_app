import 'package:hive/hive.dart';
part 'fav_model.g.dart';
@HiveType(typeId: 1)
class FavModel extends HiveObject {
  FavModel({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.categoryName,
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String image;

  @HiveField(3)
  final String price;

  @HiveField(4)
  final String categoryName;
}
