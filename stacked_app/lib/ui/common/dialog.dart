import 'package:flutter/material.dart';

class CommonDialogServices {
  static Future<void> showLoadingDialog(
      {required BuildContext context, String? title}) {
    String _title = title ?? 'Loading...';
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            content: Container(
              height: 80,
              width: 180,
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                border:
                    Border.all(width: 1, color: Theme.of(context).primaryColor),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  const CircularProgressIndicator(
                    color: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(_title),
                ],
              ),
            ),
          );
        });
  }
}
