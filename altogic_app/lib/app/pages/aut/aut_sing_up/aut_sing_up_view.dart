import 'package:altogic_app/app/pages/aut/aut_sing_up/aut_sing_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class SingUpView extends View {
  @override
  State<StatefulWidget> createState() {
    return _SingUpViewState(
      SingUpController(),
    );
  }
}

class _SingUpViewState extends ViewState<SingUpView, SingUpController> {
  _SingUpViewState(SingUpController controller) : super(controller);

  @override
  // TODO: implement view
  Widget get view {
    return Scaffold();
  }
}
