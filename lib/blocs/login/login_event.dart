// ignore: import_of_legacy_library_into_null_safe

part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginInWithEmailButtonPressed extends LoginEvent {
  final String email;
  final String password;

  LoginInWithEmailButtonPressed({required this.email, required this.password});

  @override
  // TODO: implement props
  // List<Object> get props => throw UnimplementedError();
  @override
  List<Object> get props => [email, password];

  String toString() =>
      'LoginButtonPressed { username: $email, password: $password }';
}
