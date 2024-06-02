import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_request_body.g.dart';

@JsonSerializable()
class SearchRequestBody {
  SearchRequestBody({this.name, this.priceMin, this.priceMax});

  final String? name;

  final int? priceMin;
  final int? priceMax;

  Map<String, dynamic> toJson() => _$SearchRequestBodyToJson(this);
}
