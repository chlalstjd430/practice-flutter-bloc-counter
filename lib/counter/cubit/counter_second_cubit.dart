import 'package:bloc/bloc.dart';

class CounterSecondCubit extends Cubit<int> {
  CounterSecondCubit() : super(0);

  void increment() => emit(state + 2);
  void decrement() => emit(state - 2);
}
