import 'package:flutter/material.dart';
import 'package:micro_frontend/src/common/common.dart';
import 'package:micro_frontend/src/utils/utils_import.dart';
import 'package:micro_frontend/src/utils/widget_utils.dart';

class MFELoginScreen extends StatefulWidget {
  const MFELoginScreen({Key? key}) : super(key: key);

  @override
  State<MFELoginScreen> createState() => _MFELoginScreenState();
}

class _MFELoginScreenState extends State<MFELoginScreen> {
  var textEditingControllerEmail = TextEditingController();
  var textEditingControllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MFE Login Screen'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                autofocus: false,
                controller: textEditingControllerEmail,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF61AE21))),
                  contentPadding: const EdgeInsets.only(left: 20.0),
                  border: const OutlineInputBorder(),
                  errorStyle: const TextStyle(height: 0, fontSize: 0),
                  hintText: 'Email',
                  labelText: 'Email',
                  labelStyle:
                      hintTextStyle.copyWith(color: const Color(0xFF7D858C)),
                  hintStyle: const TextStyle(
                    color: Color(0xFF7D858C),
                  ),
                ),
              ),
              WidgetUtil().verticalSpace(10),
              TextField(
                autofocus: false,
                controller: textEditingControllerPassword,
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF61AE21))),
                  contentPadding: const EdgeInsets.only(left: 20.0),
                  border: const OutlineInputBorder(),
                  errorStyle: const TextStyle(height: 0, fontSize: 0),
                  hintText: 'Password',
                  labelText: 'Password',
                  labelStyle:
                      hintTextStyle.copyWith(color: const Color(0xFF7D858C)),
                  hintStyle: const TextStyle(
                    color: Color(0xFF7D858C),
                  ),
                ),
              ),
              WidgetUtil().verticalSpace(30),
              Center(
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (textEditingControllerEmail.text == '') {
                      WidgetUtil()
                          .showToast(context, 'Please enter email address');
                    } else if (textEditingControllerPassword.text == '') {
                      WidgetUtil().showToast(context, 'Please enter password');
                    } else {
                      if (textEditingControllerEmail.text ==
                              'kiranl@gmail.com' ||
                          textEditingControllerPassword.text == 'kiran123') {
                        // Navigate to second route when tapped.
                        Navigator.pop(context, '123');
                      } else {
                        WidgetUtil().showToast(context,
                            'Email address Or Password is incorrect! Please Try again!');
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
