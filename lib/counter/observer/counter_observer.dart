import 'package:bloc/bloc.dart';

/// 상태가 변할떄마다 onChange된다.
/// 큐빗의 타입, 현재값, 변하는 값을 print해줍니다.
class CounterObserver extends BlocObserver {
  @override
  void onChange(Cubit cubit, Change change) {
    print('CounterObserver onChange()');
    print('${cubit.runtimeType} $change');
    super.onChange(cubit, change);
  }
}
