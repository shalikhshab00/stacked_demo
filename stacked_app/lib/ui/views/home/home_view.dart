import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  HomeView({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stacked App')
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Enter your name',
                              border: OutlineInputBorder()),
                          controller: viewModel.name,
                          
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Enter your location',
                              border: OutlineInputBorder()),
                          controller: viewModel.location,
                          
                          
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                            onPressed: () {
                              showDialog(context: context, builder: (BuildContext context) {
                                return AlertDialog();
                              });
                            },
                            style: ButtonStyle(
                                fixedSize:
                                    MaterialStatePropertyAll(Size(80, 35))),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
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