import 'package:flutter/material.dart';
class NoInternetConnection extends StatelessWidget {
  const NoInternetConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SimpleDialog(
          title:const Text('No Internet Connection'),
          children: <Widget>[

            SimpleDialogOption(
              onPressed: () {
                // Navigator.pop(context);
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );

  }
}
