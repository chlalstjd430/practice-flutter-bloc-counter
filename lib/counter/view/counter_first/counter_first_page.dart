import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practive_flutter_bloc/counter/cubit/counter_first_cubit.dart';
import 'package:practive_flutter_bloc/counter/view/counter_first/counter_first_view.dart';

class CounterFirstPage extends StatelessWidget {
  const CounterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterFirstCubit(),
      child: CounterFirstView(),
    );
  }
}
