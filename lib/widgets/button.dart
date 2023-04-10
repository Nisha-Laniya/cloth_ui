import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  const Button({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24,bottom: 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(title),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF292526),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            minimumSize: const Size.fromHeight(60)
        ),
      ),
    );
  }
}
