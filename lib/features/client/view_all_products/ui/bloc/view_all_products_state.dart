part of 'view_all_products_bloc.dart';

sealed class ViewAllProductsState extends Equatable {
  const ViewAllProductsState(
      {required this.productsList, required this.hasMoreData});

  final List<AdminProductsModel> productsList;
  final bool hasMoreData;
}

final class ViewAllProductsInitial extends ViewAllProductsState {
  const ViewAllProductsInitial(
      {required super.productsList, required super.hasMoreData});

  @override
  List<Object> get props => [productsList, hasMoreData];
}

class ViewAllProductsLoading extends ViewAllProductsState {
  const ViewAllProductsLoading(
      {required super.productsList, required super.hasMoreData});

  @override
  List<Object> get props => [];
}

class ViewAllProductsSuccess extends ViewAllProductsState {
  const ViewAllProductsSuccess(
      {required super.productsList, required super.hasMoreData});

  @override
  List<Object> get props => [];
}

class ViewAllProductsError extends ViewAllProductsState {
  const ViewAllProductsError(
      {required super.productsList,
      required super.hasMoreData,
      required this.errorMessage});

  final String errorMessage;

  @override
  List<Object> get props => [productsList, hasMoreData, errorMessage];
}
