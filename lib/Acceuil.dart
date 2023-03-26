import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AcceuilPage extends StatefulWidget {
  final String numeroTelephone;
  const AcceuilPage({super.key, required this.numeroTelephone});

  @override
  State<StatefulWidget> createState() => _AcceuilPage();
}

class _AcceuilPage extends State<AcceuilPage> {
  //
  TextEditingController textEditingController = TextEditingController();

  //

  bool onError = false;
  String code = "";
  final formKey = GlobalKey();

  late StreamController<ErrorAnimationType> errorController;

  var fermerModal;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Talk Time"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            // height: MediaQuery.of(context).size.width * 1,
            margin: const EdgeInsets.only(top: 30),
          )
        ]),
      ),
    );
  }
}
