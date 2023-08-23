import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

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
          child: Center(child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return tabletView(viewModel: viewModel);
              } else {
                return mobileView(viewModel: viewModel);
              }
            },
          )),
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

Widget mobileView({required HomeViewModel viewModel}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 10),
      TextFormField(
        decoration: const InputDecoration(hintText: 'Enter your name'),
        controller: viewModel.name,
      ),
      TextFormField(
        decoration: const InputDecoration(hintText: 'Enter your location'),
        controller: viewModel.location,
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(viewModel.buttonColor)),
        onPressed: () {
          viewModel.onSubmit();
          // viewModel.notifyListeners();
        },
        child: const Text('Submit'),
      ),
      // const Spacer(),
      const Card(
          borderOnForeground: true,
          shadowColor: Colors.black,
          elevation: 1.0,
          color: Colors.red,
          child: SizedBox(
            height: 250,
            width: 250,
            child: ColoredBox(color: Colors.yellow),
          )),
    ],
  );
}

Widget tabletView({required HomeViewModel viewModel}) {
  return Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Enter your name'),
              controller: viewModel.name,
            ),
            TextFormField(
              decoration:
                  const InputDecoration(hintText: 'Enter your location'),
              controller: viewModel.location,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(viewModel.buttonColor)),
              onPressed: () {
                viewModel.onSubmit();
                // viewModel.notifyListeners();
              },
              child: const Text('Submit'),
            ),
            // const Spacer(),
          ],
        ),
      ),
      const Spacer(),
      const Expanded(
        child: Column(
          children: [
            Card(
                borderOnForeground: true,
                shadowColor: Colors.black,
                elevation: 1.0,
                color: Colors.red,
                child: SizedBox(
                  height: 250,
                  width: 250,
                  child: ColoredBox(color: Colors.yellow),
                )),
          ],
        ),
      )
    ],
  );
}
