part of 'view_all_products_bloc.dart';

abstract class ViewAllProductsEvent extends Equatable {
  const ViewAllProductsEvent();
}

 class GetViewAllProductsEvent extends ViewAllProductsEvent {
  const GetViewAllProductsEvent();
  @override
  List<Object?> get props => [];
}
 class LoadMoreProductsEvent extends ViewAllProductsEvent {
  const LoadMoreProductsEvent();

  @override
  List<Object?> get props => [];
}
