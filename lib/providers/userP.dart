import 'package:get/get.dart';

class UserProvider extends GetConnect {
  // Get user id 2
  Future<Response> getUser() => get('https://reqres.in/api/users/2');
}
