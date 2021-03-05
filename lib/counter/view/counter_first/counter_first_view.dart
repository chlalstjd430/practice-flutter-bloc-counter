import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practive_flutter_bloc/counter/cubit/counter_first_cubit.dart';
import 'package:practive_flutter_bloc/counter/view/counter_second/counter_second_page.dart';

class CounterFirstView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('CounterFirstView build()');
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text('CounterFirstView')),
      body: Center(
        child: BlocBuilder<CounterFirstCubit, int>(
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
            heroTag: "btn1",
            child: Icon(Icons.add),
            onPressed: () => context.read<CounterFirstCubit>().increment(),
          ),
          SizedBox(
            height: 8,
          ),
          FloatingActionButton(
            heroTag: 'btn2',
            child: Icon(Icons.remove),
            onPressed: () => context.read<CounterFirstCubit>().decrement(),
          ),
          const SizedBox(
            height: 8,
          ),
          FloatingActionButton(
            heroTag: 'btn3',
            child: Icon(Icons.navigate_next_rounded),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CounterSecondPage()),
            ),
          ),
        ],
      ),
    );
  }
}
