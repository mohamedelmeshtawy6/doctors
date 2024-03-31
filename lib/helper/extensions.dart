import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routename,{Object? arguments}) {
 return  Navigator.of(this).pushNamed(routename ,  arguments: arguments);
  }
   Future<dynamic> pushReplacementNamed(String routename,{Object? arguments}) {
   return   Navigator.of(this).pushReplacementNamed(routename ,  arguments: arguments);

  }
  
   Future<dynamic> pushNamedAndRemoveUntil(String routename,{required RoutePredicate predicate,Object? arguments}) {
   return   Navigator.of(this).pushNamedAndRemoveUntil(routename , predicate, arguments: arguments);

  }

  void pop() {
  return  Navigator.of(this).pop();
  }
  

} 


