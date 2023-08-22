import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_app/ui/common/app_colors.dart';
import 'package:stacked_app/ui/common/ui_helpers.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  HomeView({Key? key}) : super(key: key);

  TextEditingController name = TextEditingController();
  TextEditingController location = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Enter your name'),
                  controller: name,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Enter your location'),
                  controller: location,
                ),
                SizedBox(height: 15),
                ElevatedButton(onPressed: () {
                  
                }, child: Text('Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
