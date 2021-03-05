import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:practive_flutter_bloc/counter/observer/counter_observer.dart';
import 'package:practive_flutter_bloc/counter/view/app.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(const CounterApp());
}
