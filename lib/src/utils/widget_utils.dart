import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WidgetUtil {
  Widget horizontalSpace(double size) {
    return SizedBox(
      width: size,
    );
  }

  Widget verticalSpace(double size) {
    return SizedBox(
      height: size,
    );
  }

  void showToast(BuildContext context, String message) {
    // Toast.show(message, context,
    //     duration: 3,
    //     gravity: Toast.TOP,
    //     textColor: Colors.white,
    //     backgroundColor: UtilImport().colorUtils.colorFailed);

    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        // timeInSecForIosWeb: 1,

        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);

    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //   content: Text(message),
    // ));
  }
}
