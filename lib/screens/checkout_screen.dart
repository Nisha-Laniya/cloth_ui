import '../widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../resources/resources.dart';
import 'dart:math';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTitleRow(context),
                buildListView(checkoutImage),
                Padding(
                  padding: const EdgeInsets.only(top: 48, bottom: 16),
                  child: Text(
                    'Shipping Information',
                    style: getSemiBoldStyle(),
                  ),
                ),
                buildShippingInfo(),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child:
                      ShippingInfo(title: 'Total(9 items)', price: '\$131.97'),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: ShippingInfo(title: 'Shipping Fee', price: '\$0.00'),
                ),
                const Divider(),
                const ShippingInfo(title: 'Sub Total', price: '\$131.97'),
                const Button(title: 'Pay'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildShippingInfo() {
    return Container(
      height: 87,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorManager.white2,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Image.asset(
                ImageAssets.visa,
                width: 60,
              ),
            ),
            const Text('**** **** **** 2143'),
            const Spacer(),
            Image.asset(
              IconAssets.downArrow,
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  buildListView(List<String> checkoutImage) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    checkoutImage[index],
                    height: 70,
                    width: 70,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Modern light clothes',
                            style: getSemiBoldStyle(),
                          ),
                          const Spacer(),
                          Transform.rotate(
                            angle: 90 * pi / 180,
                            child: const Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                      Text(
                        'Dress Modern',
                        style: getRegularStyle(
                            fontSize: 10, color: ColorManager.grey2),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '\$212.99',
                            style: getSemiBoldStyle(),
                          ),
                          const Spacer(),
                          Container(
                            height: 28,
                            width: 85,
                            decoration: BoxDecoration(
                                color: ColorManager.black,
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    IconAssets.minus,
                                    color: ColorManager.white,
                                    width: 20,
                                  ),
                                  Text(
                                    '1',
                                    style: getSemiBoldStyle(
                                        color: ColorManager.white),
                                  ),
                                  const Icon(
                                    Icons.add,
                                    color: ColorManager.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Divider(),
              ),
          itemCount: 3),
    );
  }

  buildTitleRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
              IconAssets.backArrow,
              height: 35,
            ),
        ),
        const Text('Checkout'),
        SvgPicture.asset(IconAssets.menu),
      ],
    );
  }
}
