import 'package:flutter/material.dart';
class PayNow extends StatefulWidget {
  const PayNow({Key? key}) : super(key: key);

  @override
  _PayNowState createState() => _PayNowState();
}

class _PayNowState extends State<PayNow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text("Abir", style: TextStyle(
          color: Colors.red,
          fontSize: 15,
        ),),
      ),
    );
  }
}
