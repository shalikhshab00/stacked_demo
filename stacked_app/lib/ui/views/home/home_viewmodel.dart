import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/ui/common/dialog.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  TextEditingController name = TextEditingController();
  TextEditingController location = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Color buttonColor = Colors.red;

  Future<void> onSubmit() async {
    await CommonDialogServices.showLoadingDialog(
        context: StackedService.navigatorKey!.currentState!.context,
        title: 'Loading');
    notifyListeners();
  }
}
