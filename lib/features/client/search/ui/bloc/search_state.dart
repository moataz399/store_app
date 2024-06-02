part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = Loading;
  const factory SearchState.success({required List<ProductsModel> products }) = Success;
  const factory SearchState.error({required String error }) = Error;
  const factory SearchState.empty() = Empty;
}
