import 'dart:async';

import 'package:jungle_app/bloc/validators.dart';

import 'package:rxdart/rxdart.dart';

class LoginBloc extends Validators {

  final _emailController    = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  // Recuperar los datos del Stream
  Stream<String> get emailStream => _emailController.stream.transform(validarEmail);
  Stream<String> get passwordStream => _passwordController.stream.transform(validarPassword);

  Stream<bool> get formValidateStream => Rx.combineLatest2(emailStream, passwordStream, (u, p) => true);

  // Insertar valores al Stream
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  dispose(){
    _emailController?.close();
    _passwordController?.close();
  }

  String get email => _emailController.value;
  String get password => _passwordController.value;

}