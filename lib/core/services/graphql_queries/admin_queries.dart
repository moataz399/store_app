import 'package:store_app/features/admin/categories/data/models/add_category_request_body.dart';
import 'package:store_app/features/admin/categories/data/models/edit_category_request_body.dart';
import 'package:store_app/features/admin/products/data/models/create_product_request_body.dart';
import 'package:store_app/features/admin/products/data/models/update_product_request_body.dart';

class AdminQueries {
  factory AdminQueries() {
    return _instance;
  }

  const AdminQueries._();

  static const AdminQueries _instance = AdminQueries._();

  Map<String, dynamic> productsQuery() {
    return {
      'query': '''
      {
    products{
    title
    }
    }
     ''',
    };
  }

  Map<String, dynamic> categoriesNumberQuery() {
    return {
      'query': '''
      {
    categories{
    name
    }
    }
     ''',
    };
  }

  Map<String, dynamic> usersQuery() {
    return {
      'query': '''
      {
    users{
    name
    }
    }
     ''',
    };
  }

  Map<String, dynamic> categoriesQuery() {
    return {
      'query': '''
      {
    categories{
    name
    id
    image
    }
    }
     ''',
    };
  }

  Map<String, dynamic> deleteCategoryQuery({required int id}) {
    return {
      'query': r'''
    mutation deleteCategory($id: ID!){
	deleteCategory(id: $id)
}
     ''',
      'variables': {
        'id': id,
      },
    };
  }

  Map<String, dynamic> createCategoryQuery({
    required AddCategoryRequestBody body,
  }) {
    return {
      'query': r'''
     mutation add($name:String!,$image:String!){
	addCategory(
		data: { name: $name, image: $image,}
	) {
		id
		name
		image
	}
}
     ''',
      'variables': {
        'name': body.name,
        'image': body.image,
      },
    };
  }

  Map<String, dynamic> editCategoryQuery(
      {required EditCategoryRequestBody body}) {
    return {
      'query': r'''
   mutation Edit($name:String!,$image:String!,$id:ID!){
	updateCategory(id: $id, changes: { name: $name, image: $image,}) {
		id

	}
}
     ''',
      'variables': {
        'name': body.name,
        'image': body.image,
        'id': body.id,
      },
    };
  }

  Map<String, dynamic> getUsersQuery() {
    return {
      'query': '''
                  {
             users{
		                id
		                name
		                email
  }
}
     ''',
    };
  }

  Map<String, dynamic> deleteUser({required String id}) {
    return {
      'query': r'''
                 mutation Delete($id: ID!){
	deleteUser(id: $id)
}

     ''',
      'variables': {
        'id': id,
      },
    };
  }


  Map<String, dynamic> allProducts() {
    return {
      'query': '''
       {
            products{
              id
              title
              price
              images
              description
              category{
                id
                name
                }
            }
          }
     ''',
    };



  }













  Map<String, dynamic> createProductMap(
      {required CreateProductRequestBody body}) {
    return {
      'query': r'''
          mutation CreateProduct($title: String!, $price: Float!, $description:String!, $categoryId: Float!,$imagesList:[String!]!  ) {
              addProduct(
                data: {
                  title: $title,
                  price: $price
                  description: $description
                  categoryId: $categoryId
                  images: $imagesList
                }
              ) {
                title
              }
            }
        ''',
      'variables': {
        'title': body.title,
        'price': body.price,
        'description': body.description,
        'categoryId': body.categoryId,
        'imagesList': body.imageList,
      },
    };
  }

  Map<String, dynamic> deleteMapQuery({
    required String productId,
  }) {
    return {
      'query': r'''
            mutation DeleteCategory($productId: ID!) {
              deleteProduct(id: $productId)
            }
      ''',
      'variables': {
        'productId': productId,
      },
    };
  }

  //Update Product
  Map<String, dynamic> updateProductMap({
    required UpdateProductRequestBody body,
  }) {
    return {
      'query': r'''
            mutation UpdateProduct($productId: ID!, $title: String!,$description: String!,$imageList:[String!]!,$price: Float!,$categoryId: Float! ) {
          updateProduct(id: $productId, 
          changes: { 
            title: $title,
            categoryId: $categoryId,
            images:$imageList,
            description: $description,
            price:$price
            }) {
            title
          }
        }
        ''',
      'variables': {
        'productId': body.productId,
        'title': body.title,
        'description': body.description,
        'imageList': body.imageList,
        'categoryId': body.categoryId,
        'price': body.price,
      },
    };
  }

  Map<String, dynamic> getProductDetailsMapQuery({required int id}) {
    return {
      'query': '''
           {
          product(id: $id) {
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
  }  Map<String, dynamic> getProductsByCategory({required int categoryId}) {
    return {
      'query': '''
           {
          products(categoryId: $categoryId) {
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
