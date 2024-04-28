// abstract class that will be used in the UI
import 'package:firebase_auth/firebase_auth.dart';
import '../user_repository.dart';

abstract class UserRepository {

  // get user method to get the current user from Firebase
  // It's gonna return a stream of MyUser object
  // It's gonna return the current user from Firebase
  Stream<User?> get user;

  Future<void> signIn(String email, String password);

  Future<void> logOut();

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> resetPassword(String email);

  // setUserData method to set the user data in Firebase
  Future<void> setUserData(MyUser user);

  // getMyUser method to get the user data from Firebase and return MyUser object
  Future<MyUser> getMyUser(String myUserId);

}