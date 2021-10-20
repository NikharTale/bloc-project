
import 'package:equatable/equatable.dart';
abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LogInButton extends LoginEvent {
  final String email;
  final String password;

  const LogInButton({required this.email, required this.password});

  
  @override
  List<Object> get props => [email, password];

}
