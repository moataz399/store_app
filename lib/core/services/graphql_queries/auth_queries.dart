import 'package:store_app/features/auth/data/models/login_request_body.dart';
import 'package:store_app/features/auth/data/models/register_request_body.dart';

class AuthQueries {
  factory AuthQueries() {
    return _instance;
  }

  const AuthQueries._();

  static const AuthQueries _instance = AuthQueries._();

  Map<String, dynamic> loginQuery({required LoginRequestBody body}) {
    return {
      'query': r'''
     mutation Login($email:String!, $password:String!){
	login(email: $email, password: $password) {
		access_token
		refresh_token
	}
     } 
     ''',
      'variables': {
        'email': body.email,
        'password': body.password,
      },
    };
  }

  Map<String, dynamic> registerQuery({required RegisterRequestBody body}) {
    return {
      'query': r'''
     mutation Register($email:String!, $password:String!, $name:String!, $avatar:String!){
	addUser(
		data: {
			name: $name
			email: $email
			password: $password
			avatar: $avatar
		}
	) {
		id
		email
	}
     } 
     ''',
      'variables': {
        'email': body.email,
        'password': body.password,
        'name': body.name,
        'avatar': body.avatar,
      },
    };
  }
}
