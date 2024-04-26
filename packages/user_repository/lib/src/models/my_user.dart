import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';
import 'package:user_repository/src/entities/entities.dart';


class MyUser extends Equatable {
  final String id;
  final String email;
  final String name;
  final String? picture;

  // Constructor
  const MyUser({
    required this.id,
    required this.email,
    required this.name,
    this.picture,
  });

  // Empty user which represents an unauthentcated user.
  static const empty = MyUser(
    id: '', 
    email: '', 
    name: '',
    picture: ''
  );

  // CopyWith method
  // It's gonna return MyUser object, taking all the parameters of the class and return object that was fed with the parameter that is pasted to the copyWith method
  MyUser copyWith({
    String? id,
    String? email,
    String? name,
    String? picture,
  }) {
    return MyUser(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      picture: picture ?? this.picture,
    );
  }

  // isEmtpy method
  bool get isEmpty => this == MyUser.empty;

  // isNotEmpty method
  bool get isNotEmpty => this != MyUser.empty;

  // toEntity method to take MyUser object and return MyUserEntity object and transform to JSON and send it to Firebase
  MyUserEntity toEntity() {
    return MyUserEntity(
      id: id,
      email: email,
      name: name,
      picture: picture,
    );
  }

  // fromEntity method to JSON from Firebase and transform it to MyUserEntity object and return MyUser object
  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      id: entity.id,
      email: entity.email,
      name: entity.name,
      picture: entity.picture,
    );
  }


  @override
  List<Object?> get props => [id, email, name, picture];

}