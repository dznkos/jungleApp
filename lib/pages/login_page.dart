import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:jungle_app/bloc/login_bloc.dart';
import 'package:jungle_app/bloc/provider.dart';

import 'package:jungle_app/provider/usuario_provider.dart';
import 'package:jungle_app/utils/utils.dart';


class LoginPage extends StatelessWidget {

  final usuarioProvider = new UsuarioProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Image.asset("assets/login.jpg", 
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: BackdropFilter(
              filter:  ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.orange.withOpacity(0.1),
              ),              
            ),
          ),
          _loginForm(context),

        ],
      ),
    );
  }

  Widget _loginForm(BuildContext context){

    final bloc = Provider.of(context);
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
            child: Container(
              height: 180.0,

            )
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: EdgeInsets.symmetric(vertical: 50),
            width: size.width * 0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3.0,
                  offset: Offset(0.0, 5.0),
                  spreadRadius: 3.0,
                )
              ]
            ),
            child: Column(
              children: [
                Text('Login', style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold, color: Colors.blueAccent),),
                SizedBox(height: 15.0,),
                _crearCorreo(bloc),
                _crearPassword(bloc),
                _crearBoton(bloc),
              ],
            ),
          ),
          FlatButton(
            onPressed: ()=> Navigator.pushReplacementNamed(context, 'registro'),
            child: Text('Crear cuenta nueva', style: TextStyle(color: Colors.black54, fontSize: 12,),),
          ),

          
          SizedBox(height: 100.0,)
        ],
      ),
    );
  }

  Widget _crearCorreo(LoginBloc bloc){

    return StreamBuilder(
      stream: bloc.emailStream,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.email, color: Colors.blueAccent),
              hintText: 'example@gmail.com',
              labelText: 'Correo Electronico',
              //counterText: snapshot.data,
              errorText: snapshot.error
            ),
            onChanged: bloc.changeEmail            
          ),
        );
      },    
    );
  }

  Widget _crearPassword(LoginBloc bloc){
    return StreamBuilder(
      stream: bloc.passwordStream,
      builder: (context, snapshot) {
        return Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock_outline, color: Colors.blueAccent,),
                    labelText: 'Password',
                    counterText: snapshot.data,
                    errorText: snapshot.error,
                ),
                onChanged: bloc.changePassword,
              ),
        );
      }, 
    );
  }

  Widget _crearBoton(LoginBloc bloc){

    return StreamBuilder(
      stream: bloc.formValidateStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return RaisedButton(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
              child: Text('Ingresar'),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0)
            ),
            elevation: 0.0,
            color: Colors.blueAccent,
            textColor: Colors.white,
            onPressed: snapshot.hasData ? (){ _login(context,bloc); } : null
            
                    );
                  },     
                );
            
                
              }

  _login(BuildContext context, LoginBloc bloc) async{                
    
    Map info = await usuarioProvider.login(bloc.email, bloc.password);

    if ( info['ok'] ) {
      Navigator.pushReplacementNamed(context, 'home');
    }else {
      mostrarAlerta(context, info['mensaje']);
    }
      
  }    
            
}