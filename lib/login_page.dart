import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_task/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _textHello = const TextStyle(fontSize: 22.0, color: Colors.black87);
  final _textLogIn = const TextStyle(fontSize: 22.0, color: Colors.indigo);
  final _textInput = const TextStyle(fontSize: 19.0, color: Colors.black87);
  final _textButtonLogIn = const TextStyle(fontSize: 19.0, color: Colors.white);

  String email = "";
  String password = "";

  void submit() {
    final form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      performLogin();
    }
  }

  void performLogin() {
    hideKeyboard();
    // HARDCODE
    if (email == "admin@admin" && password == "admin") {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const MainPage()));
    }
  }

  void hideKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Hello! Please ',
                              style: _textHello,
                            ),
                            Text(
                              'Log In ',
                              style: _textLogIn,
                            ),
                            Text(
                              'to continue',
                              style: _textHello,
                            ),
                          ],
                        ),
                        SizedBox(
                            width: 400.0,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                icon: Icon(Icons.email_outlined, size: 16.0),
                                labelText: 'Email',
                              ),
                              keyboardType: TextInputType.emailAddress,
                              style: _textInput,
                              onSaved: (value) => email = value!,
                              validator: (value) => (!value!.contains("@")
                                  ? 'Invalid email'
                                  : null),
                            )),
                        const SizedBox(
                          height: 15.0,
                        ),
                        SizedBox(
                            width: 400.0,
                            child: TextFormField(
                              obscureText: true,
                              obscuringCharacter: '*',
                              decoration: const InputDecoration(
                                icon: Icon(Icons.password, size: 16.0),
                                labelText: 'Password',
                              ),
                              keyboardType: TextInputType.text,
                              style: _textInput,
                              onSaved: (value) => password = value!,
                              validator: (value) =>
                                  value == "" ? 'Invalid password' : null,
                            )),
                        const SizedBox(
                          height: 15.0,
                        ),
                        MaterialButton(
                            minWidth: 150.0,
                            height: 50.0,
                            color: Colors.indigo,
                            onPressed: submit,
                            child: Text(
                              'Log In',
                              style: _textButtonLogIn,
                            ))
                      ],
                    )))));
  }
}
