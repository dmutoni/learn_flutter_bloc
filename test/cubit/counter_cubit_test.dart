import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_bloc/business_logic/cubit/counter_cubit.dart';

void main() {
  group('CounterCubit', () {
    late CounterCubit counterCubit;

    setUp(() {
      counterCubit = CounterCubit();
    });

    tearDown(() {
      counterCubit.close();
    });
    test(
        'The initial state for the CounterCubit is the CounterState(counterValue:0)',
        () {
      expect(counterCubit.state, CounterState(counterValue: 0));
    });
  });
}
