import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stappowner/_bases/i18n/messages.dart';

class NotFoundPage extends StatelessWidget {

  NotFoundPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(Messages.notFoundMsg, style: TextStyle(fontSize: 26)),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text(Messages.notFoundHomeBtn),
                    color: Theme.of(context).accentColor,
                  ),
                  RaisedButton(
                    child: Text(Messages.notFoundBackBtn),
                    onPressed: () => Get.back(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
