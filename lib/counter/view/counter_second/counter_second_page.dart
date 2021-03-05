import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practive_flutter_bloc/counter/cubit/counter_second_cubit.dart';
import 'package:practive_flutter_bloc/counter/view/counter_second/counter_second_view.dart';

class CounterSecondPage extends StatelessWidget {
  const CounterSecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterSecondCubit(),
      child: CounterSecondView(),
    );
  }
}
