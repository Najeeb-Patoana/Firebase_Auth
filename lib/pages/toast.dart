import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class Toast {
  Toast(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      // toastLength: Toast.,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
