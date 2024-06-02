import 'package:store_app/features/client/search/data/models/search_request_body.dart';

class SearchQuery {
  factory SearchQuery() {
    return _instance;
  }

  const SearchQuery._();

  static const SearchQuery _instance = SearchQuery._();

  Map<String, dynamic>  searchProduct({required SearchRequestBody body}) {
    return {
      'query': r'''
        query SearchProducts($searchName: String , $priceMax: Int , $priceMin: Int){
             products(title: $searchName, price_max: $priceMax, price_min:$priceMin){
            id
            title
            images
            description
            price
            category{
                name
                id
            }
          }
        }        
        ''',
      'variables': {
        'searchName': body.name,
        'priceMax': body.priceMax,
        'priceMin': body.priceMin,
      },
    };
  }
}
