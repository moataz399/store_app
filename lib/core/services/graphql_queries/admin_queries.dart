import 'package:store_app/features/admin/categories/data/models/add_category_request_body.dart';
import 'package:store_app/features/admin/categories/data/models/admin_categories_response.dart';
import 'package:store_app/features/admin/categories/data/models/edit_category_request_body.dart';
import 'package:store_app/features/auth/data/models/login_request_body.dart';
import 'package:store_app/features/auth/data/models/register_request_body.dart';

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
}
