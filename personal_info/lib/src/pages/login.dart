import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final bool visualizarPassword = false; 

  @override
  void initState(){
    super.initState();
    //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarLogin(),
      body: _bodyLogin(visualizarPassword),
    );
  }
}

Widget _appBarLogin(){
  return AppBar(
    title: Text("Personal Info Manager"),
  );
}

Widget _bodyLogin(bool visualizarPassword){
  return Stack(
    children: <Widget>[
      _fondoLogin(),
      _bloqueInicioSesion(),
    ],
    alignment: AlignmentDirectional.center,
  );
}

Widget _fondoLogin(){
  final colorFondo = Container(
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: RadialGradient(
        tileMode: TileMode.repeated,
        radius: 0.1,
        colors: [
          Colors.teal,
          Colors.black,
        ],
      ),
    ),
  );

  final circulo = Container(
    width: 400,
    height: 400,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(200),
      color: Colors.black,
    ),
  );

  return Stack(
    children: <Widget>[
      colorFondo,
      circulo,
    ],
    alignment: AlignmentDirectional.center,
  );
}

Widget _bloqueInicioSesion(){
  return SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          _textoTitulo(),
          SizedBox(height: 20,),
          _inputUsuario(),
          _inputPassword(),
          SizedBox(height: 20,),
          _botonIniciarSesion(),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      
    ),
    
  );
}

Widget _textoTitulo(){
  return Text(
    "Inicio de sesión", 
    style: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
    ),
  );
}

Widget _inputUsuario(){
  return Container(
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        icon: Icon(Icons.person),
        hintText: "Nombre de usuario",
        labelText: "Usuario",
      ),
    ),
  );
}

Widget _inputPassword(){
  return Container(
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.lock),
        hintText: "Contraseña",
        suffixIcon: FlatButton(
          onPressed: (){

          }, 
          child: Icon(Icons.remove_red_eye)
        ) 
      ),
    ),
  );
}

Widget _botonIniciarSesion(){
  return FlatButton(
    child: Text("Ingresar"),
    onPressed: (){
      
    },
  );
}