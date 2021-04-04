import 'package:mobx/mobx.dart';
part 'test_view_model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
  @observable
  int number = 0;

  @computed
  bool get isEven => number.isEven;

  @action
  void incrementNumber() {
    number += 1;
  }
}
