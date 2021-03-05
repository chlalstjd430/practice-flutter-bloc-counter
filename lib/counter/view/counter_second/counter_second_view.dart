import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practive_flutter_bloc/counter/cubit/counter_second_cubit.dart';

class CounterSecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('CounterSecondView build()');
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterSecondView'),
      ),
      body: Center(
        child: BlocBuilder<CounterSecondCubit, int>(
          builder: (context, state) {
            return Text(
              '$state',
              style: textTheme.headline2,
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterSecondCubit>().increment(),
          ),
          SizedBox(
            height: 8,
          ),
          FloatingActionButton(
            heroTag: 'btn2',
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterSecondCubit>().decrement(),
          ),
        ],
      ),
    );
  }
}
