import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example_documentation/app.dart';
import 'package:flutter_bloc_example_documentation/counter_observer.dart';


void main() {
  Bloc.observer = const CounterObserver();
  runApp(const App());
}
