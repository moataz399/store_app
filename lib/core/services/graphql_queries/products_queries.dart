


class ProductsQueries {
  factory ProductsQueries() {
    return _instance;
  }

  const ProductsQueries._();

  static const ProductsQueries _instance = ProductsQueries._();


  Map<String, dynamic> viewAllProductsQuery({required int offset}) {
    return {
      'query': '''
           {
          products(limit: 6, offset: $offset) {
            id
            title
            price
            images
            description
              category{
                name
                }
          }
        },
  
      ''',
    };
  }

}