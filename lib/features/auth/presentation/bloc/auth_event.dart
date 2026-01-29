part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthSignUp extends AuthEvent {
  // so that we can call it in auth bloc
  final String name;
  final String email;
  final String password;

  AuthSignUp({required this.name, required this.email, required this.password});
}

final class AuthLogin extends AuthEvent {
  // so that we can call it in auth bloc
  final String email;
  final String password;

  AuthLogin({required this.email, required this.password});
}

final class AuthIsUserLoggedIn extends AuthEvent {}
