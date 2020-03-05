import 'package:flutter/material.dart';
import 'package:personal_info/src/pages/login.dart';

Map<String, WidgetBuilder> getRoutes(){

  return <String, WidgetBuilder>{
    "/": (BuildContext context) => LoginPage(), 
  };
} 