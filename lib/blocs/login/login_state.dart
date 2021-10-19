// ignore: import_of_legacy_library_into_null_safe
part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class LoginProgress extends LoginState {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class LoginSuccess extends LoginState {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class LoginFailed extends LoginState {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
