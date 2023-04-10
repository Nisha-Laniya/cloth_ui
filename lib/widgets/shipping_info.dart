import 'package:flutter/material.dart';
import '../resources/resources.dart';

class ShippingInfo extends StatelessWidget {
  final String title;
  final String price;
  const ShippingInfo({Key? key, required this.title, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: getRegularStyle(),
          ),
          Text(
            price,
            style: getSemiBoldStyle(),
          ),
        ],
      ),
    );
  }
}
