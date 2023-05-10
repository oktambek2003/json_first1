import 'package:flutter/material.dart';
import 'package:jsopractica/models/person.dart';
import '../models/people.dart';
import '../models/blackscreemn.dart';
Route generateroute(settings) {
  if (settings.name == Persos.routname) {
    return MaterialPageRoute(
        settings: settings, builder: (context) => Persos(people: settings.arguments as Person,));
  }
    return MaterialPageRoute(settings: settings, builder: (context) => BlackSceen());
}
