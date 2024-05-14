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
  }  Map<String, dynamic> categoriesQuery() {
    return {
      'query': '''
      {
    categories{
    name
    }
    }
     ''',
    };
  }  Map<String, dynamic> usersQuery() {
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
}
