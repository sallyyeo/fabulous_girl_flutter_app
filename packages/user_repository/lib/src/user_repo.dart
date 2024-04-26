// abstract class that will be used in the UI
import '../user_repository.dart';

abstract class UserRepository {

  Future<void> signIn(String email, String password);

  Future<void> logOut();

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> resetPassword(String email);
  
}