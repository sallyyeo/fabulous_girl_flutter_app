// class used to handle the backend calls of the user class
import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable{
  final String id;
  final String email;
  final String name;
  final String? picture;

  // Constructor
  const MyUserEntity({
    required this.id,
    required this.email,
    required this.name,
    this.picture,
  });

  // toDocument method to take MyUser object and return MyUserEntity object and transform to JSON and send it to Firebase
  Map<String, Object> toDocument() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'picture': picture as Object,
    };
  }
  
  // fromDocument method to take JSON from Firebase and transform it to MyUserEntity object and return MyUser object
  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
      id: doc['id'] as String,
      email: doc['email'] as String,
      name: doc['name'] as String,
      picture: doc['picture'] as String?,
    );
  }

  @override
  List<Object?> get props => [id, email, name, picture];

  // toString method
  @override
  String toString () {
    return '''UserEntity { 
      id: $id, 
      email: $email, 
      name: $name, 
      picture: $picture 
    }''';
  }
}