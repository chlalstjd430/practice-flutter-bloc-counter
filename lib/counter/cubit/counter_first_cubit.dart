import 'package:bloc/bloc.dart';

class CounterFirstCubit extends Cubit<int> {
  CounterFirstCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
