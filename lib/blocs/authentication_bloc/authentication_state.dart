part of 'authentication_bloc.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationState extends Equatable {

  final AuthenticationStatus status;
  final User? user;

  // The AuthenticationState class has a private constructor and three public constructors:
  const AuthenticationState._({
    this.status = AuthenticationStatus.unknown,
    this.user,
  });

  // The AuthenticationState class has three constructors:
  // The unknown constructor is used when the authentication state is unknown.
  // This is the initial state of the AuthenticationBloc.
  const AuthenticationState.unknown() : this._();

  // The authenticated constructor is used when a user has successfully authenticated.
  // The user is of type User which is the Firebase User class.
  // It takes a [MyUser] property representing the current [authenticated] user.
  const AuthenticationState.authenticated(User user)
      : this._(status: AuthenticationStatus.authenticated, user: user);

  // The unauthenticated constructor is used when a user has not authenticated.
  // This constructor is used when a user has signed out.
  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  @override
  List<Object> get props => [status, user];
}