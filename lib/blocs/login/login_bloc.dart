import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:http/http.dart' as http;
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());
  LoginState get initialState => LoginInitial();

  //LoginBloc(initialState) : super(initialState);

  Stream<LoginState> mapEventoState(LoginEvent event) async* {
    if (event is LoginInWithEmailButtonPressed) {
      try {
        // print("-----------------------event-------------");
        yield LoginProgress();
        final token = await login(event.email, event.password);

        yield LoginSuccess();
      } catch (e) {
        print(e);
        yield LoginFailed();
      }
    }
  }

  Future login(email, password) async {
    final response = await http.post(Uri.parse('https://reqres.in/api/login'),
        body: {'email': email, 'password': password});
    if (response.statusCode == 200) {
      final tokken = jsonDecode(response.body);
      return tokken;
    }
  }
}
