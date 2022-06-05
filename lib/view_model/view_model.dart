import 'dart:developer';
import 'dart:ffi';

import 'package:mobx/mobx.dart';
import 'package:sunum/model/counter_model.dart';
part 'view_model.g.dart';

class ViewModel = _ViewModelBase with _$ViewModel;

abstract class _ViewModelBase with Store {
  final CounterModel counterModel = CounterModel();

  @observable
  int number = 0;

  @computed
  bool get isEven => number.isEven;

  @action
  void Increment() {
    number = ++counterModel.number;
    counterModel.isEven = isEven;
  }
}
