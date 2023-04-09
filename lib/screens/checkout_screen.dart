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
            padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      elevation: 5,
                      shape: CircleBorder(),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: CircleAvatar(
                          backgroundColor: ColorManager.white,
                          child: Image.asset(
                            IconAssets.backArrow,
                            height: 24,
                          ),
                        ),
                      ),
                    ),
                    Text('Checkout'),
                    SvgPicture.asset(IconAssets.menu)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: ListView.separated(
                    shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           ClipRRect(
                                borderRadius: BorderRadius.circular(14),
                                  child: Image.asset(ImageAssets.cloth1,height: 70,width: 70,),
                           ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Modern light clothes'),
                                    Transform.rotate(
                                      angle:90 * pi /180 ,
                                      child: Icon(Icons.more_vert),
                                    ),
                                  ],
                                ),
                                Text('Dress Modern'),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('\$212.99'),
                                    Container(
                                      height: 28,
                                      width: 85,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24.0),
                        child: Divider(),
                      ),
                      itemCount:3
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48,bottom: 16),
                  child: Text('Shipping Information',style: getSemiBoldStyle(),),
                ),
                Container(
                  height: 87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xFFF6F6F6),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 12),
                          child: Image.asset(ImageAssets.visa,width: 60,),
                        ),
                        Text('**** **** **** 2143'),
                        Spacer(),
                        Image.asset(IconAssets.downArrow,height: 20,)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24,bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total(9 items)',style: getRegularStyle(),),
                      Text('\$131.97',style: getSemiBoldStyle(),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Shipping Fee',style: getRegularStyle(),),
                      Text('\$0.00',style: getSemiBoldStyle(),),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sub Total',style: getRegularStyle(),),
                      Text('\$131.97',style: getSemiBoldStyle(),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Pay'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF292526),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                        minimumSize: const Size.fromHeight(60)
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
