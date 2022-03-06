// import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_bloc/logic/cubit/counter_cubit.dart';
import 'package:test/test.dart';

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
      expect(counterCubit.state, const CounterState(counterValue: 0));
    });

    // blocTest<CounterCubit, CounterState>(
    //     'The cubit should emit a CounterState(counterValue:1, wasIncremented:true) when cubit.increment() function is called',
    //     build: () => counterCubit,
    //     act: (cubit) async => cubit.increment(),
    //     expect: [const CounterState(counterValue: 1, wasIncremented: true)]);
  });
}
