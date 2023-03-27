import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:talkhours/chat.dart';
import 'package:talkhours/newChat.dart';

class AcceuilPage extends StatefulWidget {
  final String numeroTelephone;
  const AcceuilPage({super.key, required this.numeroTelephone});

  @override
  State<StatefulWidget> createState() => AcceuilPageState();
}

class AcceuilPageState extends State<AcceuilPage> {
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
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(
          "Talk Time",
          textAlign: TextAlign.left,
        ),
        // automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(8, 29, 13, 100),
      ),
      body: Center(
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            // height: MediaQuery.of(context).size.width * 1,
            margin: const EdgeInsets.only(top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: (() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ChatPage()));
                    }),
                    child: Container(
                      height: 60,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/me.jpeg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'BALLO Ibrahima',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    'Hello mohamed cv !',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13),
                                  ),
                                ]),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                '10:34',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10),
                              ),
                              Text(
                                '',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Newchat()));
        },
        backgroundColor: const Color.fromRGBO(10, 176, 62, 100),
        child: const Icon(Icons.add),
      ),
    );
  }
}
