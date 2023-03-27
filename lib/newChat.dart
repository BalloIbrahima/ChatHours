import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:talkhours/chat.dart';

class Newchat extends StatefulWidget {
  const Newchat({super.key});

  @override
  State<Newchat> createState() => _NewchatState();
}

class _NewchatState extends State<Newchat> {
  //
  TextEditingController textEditingController = TextEditingController();

  //

  bool onError = false;
  String code = "";
  final formKey = GlobalKey();

  late StreamController<ErrorAnimationType> errorController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        // centerTitle: false,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(
          "Nouvelle discution",
          textAlign: TextAlign.left,
        ),
        // automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(8, 29, 13, 100),
      ),
      body: Center(
        child: Column(children: []),
      ),
    );
  }
}
