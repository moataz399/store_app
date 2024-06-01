import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';
import 'package:store_app/features/client/view_all_products/data/repo/view_all_products_repo.dart';

part 'view_all_products_event.dart';

part 'view_all_products_state.dart';

class ViewAllProductsBloc
    extends Bloc<ViewAllProductsEvent, ViewAllProductsState> {
  ViewAllProductsBloc(this.repo)
      : super(
          const ViewAllProductsInitial(productsList: [], hasMoreData: true),
        ) {
    on<GetViewAllProductsEvent>(_getViewAllProducts);
    on<LoadMoreProductsEvent>(_loadMoreProducts, transformer: droppable());
  }

  final ViewAllProductsRepo repo;
  int offset = 6;

  Future<void> _getViewAllProducts(
    GetViewAllProductsEvent event,
    Emitter<ViewAllProductsState> emit,
  ) async {
    emit(const ViewAllProductsLoading(productsList: [], hasMoreData: true));
    final response = await repo.getAllProducts(offset: 0);
    response.when(
      success: (data) {
        emit(
          ViewAllProductsSuccess(
            productsList: data.data.products,
            hasMoreData: true,
          ),
        );
      },
      failure: (error) {
        emit(
          ViewAllProductsError(
            productsList: state.productsList,
            hasMoreData: state.hasMoreData,
            errorMessage: error,
          ),
        );
      },
    );
  }

  Future<void> _loadMoreProducts(
    LoadMoreProductsEvent event,
    Emitter<ViewAllProductsState> emit,
  ) async {
    if (!state.hasMoreData) return;
    offset += 6;
    emit(
      ViewAllProductsLoading(
        productsList: state.productsList,
        hasMoreData: true,
      ),
    );
    final response = await repo.getAllProducts(offset: offset);

    response.when(
      success: (data) {
        final newList = [...state.productsList, ...data.data.products];
        emit(
          ViewAllProductsSuccess(
            productsList: newList,
            hasMoreData: !(data.data.products.length < 6),
          ),
        );
      },
      failure: (error) {
        emit(
          ViewAllProductsError(
            productsList: state.productsList,
            hasMoreData: state.hasMoreData,
            errorMessage: error,
          ),
        );
      },
    );
  }

  void handlePagination({
    required ScrollController scrollController,
    required double loadMorePosition,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final offset = scrollController.offset;
      final maxScroll = scrollController.position.maxScrollExtent;
      if (offset >= maxScroll - loadMorePosition) {
        add(const LoadMoreProductsEvent());
      }
    });
  }
}
