import 'package:flutter/material.dart';
import 'package:flutter_templ_mvvm/core/constants/enums/app_theme_enum.dart';
import 'package:flutter_templ_mvvm/core/init/notifier/theme_notifier.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
part 'test_view_model.g.dart';

class TestViewModel = _TestViewModelBase with _$TestViewModel;

abstract class _TestViewModelBase with Store {
  BuildContext context;

  void setContext(BuildContext context) {
    this.context = context;
  }

  @observable
  int number = 0;

  @computed
  bool get isEven => number.isEven;

  @action
  void incrementNumber() {
    number += 1;
  }

  void changeTheme() {
    Provider.of<ThemeNotifier>(context).changeTheme(AppThemes.DARK);
  }
}
