import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_templ_mvvm/app/authentication/test/viewmodel/test_view_model.dart';
import 'package:flutter_templ_mvvm/core/base/state/base_state.dart';
import 'package:flutter_templ_mvvm/core/base/view/base_view.dart';

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
        body: textNumber(),
        floatingActionButton: floatingActionButtonForIncrement(),
      );

  FloatingActionButton floatingActionButtonForIncrement() {
    return FloatingActionButton(
      onPressed: () {
        viewModel.incrementNumber();
      },
    );
  }

  Widget textNumber() => Observer(
        builder: (context) {
          return Text(viewModel.number.toString());
        },
      );
}
