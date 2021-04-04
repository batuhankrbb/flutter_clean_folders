import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_templ_mvvm/app/authentication/test/viewmodel/test_view_model.dart';
import 'package:flutter_templ_mvvm/core/base/state/base_state.dart';
import 'package:flutter_templ_mvvm/core/base/view/base_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_templ_mvvm/core/constants/enums/app_theme_enum.dart';
import 'package:flutter_templ_mvvm/core/init/notifier/theme_notifier.dart';
import 'package:flutter_templ_mvvm/core/init/theme/app_theme_dark.dart';

class TestView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestViewState();
}

class _TestViewState extends BaseState<TestView> {
  TestViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
      viewModel: TestViewModel(),
      onModelReady: (model) {
        viewModel = model;
      },
      onPageBuilder: (context, viewmodel) => scaffoldBody,
    );
  }

  Widget get scaffoldBody => Scaffold(
        appBar: AppBar(
          title: Text("TEST"),
        ),
        body: textNumber(),
        floatingActionButton: floatingActionButtonForIncrement(),
      );

  FloatingActionButton floatingActionButtonForIncrement() {
    return FloatingActionButton(
      onPressed: () {
        viewModel.incrementNumber();
        viewModel.changeTheme();
      },
    );
  }

  Widget textNumber() => Observer(
        builder: (context) {
          return Text(viewModel.number.toString());
        },
      );
}
