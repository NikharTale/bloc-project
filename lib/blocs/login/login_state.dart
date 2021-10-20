import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInInitial extends LoginState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class LoginProgress extends LoginState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class LoginSuccess extends LoginState {
  @override
  List<Object> get props => throw UnimplementedError();
}

class LoginFailed extends LoginState {
  const LoginFailed();

  @override
  List<Object> get props => throw UnimplementedError();
}
