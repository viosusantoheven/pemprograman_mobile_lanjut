import 'package:flutter/material.dart';
import 'screens/profile_screen.dart';
import 'package:aplikasi_3/inheritanced_widget.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/explore':
      case '/profile':
      return MaterialPageRoute(builder: (_) => const ProfileScreen());
      default:
      return _errorRoute();
  }
}
static Route<dynamic> _errorRoute() {
 return MaterialPageRoute(builder: (_) {
 return Scaffold(
 appBar: AppBar(title: Text("Error")),
 body: Center(child: Text('Error page')),
 );
 });
}

  }
