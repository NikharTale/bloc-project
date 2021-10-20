import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'login_event.dart';
import 'login_state.dart';
import 'package:http/http.dart' as http;

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginSuccess());
  LoginState get initialState => LoginSuccess();

  //LoginBloc(initialState) : super(initialState);

  Stream<LoginState> mapEventoState(LoginEvent event) async* {
    if (event is LogInButton) {
      try {
        // print("-----------------------event-------------");
        yield LoginProgress();
        // ignore: unused_local_variable
        final token = await login(event.email, event.password);

        yield LoginSuccess();
      } catch (e) {
        yield const LoginFailed();
      }
    }
  }

  Future login(email, password) async {
    final error;
    final response = await http.post(Uri.parse('https://reqres.in/api/login'),
        body: {'email': email, 'password': password});
    if (response.statusCode == 200) {
      final tokken = jsonDecode(response.body);
      return tokken;
    } 
    
    
  }
}
