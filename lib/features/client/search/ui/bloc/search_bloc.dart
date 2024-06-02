import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';
import 'package:store_app/features/client/search/data/models/search_request_body.dart';
import 'package:store_app/features/client/search/data/repo/search_repo.dart';

part 'search_event.dart';

part 'search_state.dart';

part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this.repo) : super(const SearchState.initial()) {
    on<SearchForProductEvent>(_searchForProduct);
  }

  final SearchRepo repo;

  Future<void> _searchForProduct(
      SearchForProductEvent event, Emitter<SearchState> emit) async {
    emit(const SearchState.loading());
    final response = await repo.searchProducts(body: event.searchRequestBody);
    response.when(
      success: (ProductsResponse data) {
        if (data.data.products.isEmpty) {
          emit(const SearchState.empty());
        } else {
          emit(SearchState.success(products: data.data.products));
        }
      },
      failure: (String message) {
        emit(SearchState.error(error: message));
      },
    );
  }
}
