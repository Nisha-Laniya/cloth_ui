import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';

import '../resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                            child: Image.asset(ImageAssets.cloth2,height: 392,width:double.infinity,fit: BoxFit.cover,),),
                        Positioned(
                          left: 12,
                          top: 12,
                          child: Material(
                            elevation: 5,
                            shape:CircleBorder(),
                            child: CircleAvatar(
                              backgroundColor: ColorManager.white,
                              child: Image.asset(IconAssets.backArrow,height: 24,),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 12,
                          top: 12,
                          child: SvgPicture.asset(
                            IconAssets.like,
                            fit: BoxFit.cover,
                            height: 42,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Modern light\nclothes',style: getSemiBoldStyle(fontSize: 24),),
                        Row(
                          children: [
                            Material(
                              elevation: 5,
                              shape: CircleBorder(),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset(IconAssets.minus,color: Colors.black,width: 20,),
                              ),
                            ),
                            Text("   1   ",style: getBoldStyle(fontSize: 16),),
                            Material(
                              elevation: 5,
                              shape: CircleBorder(),
                              child: CircleAvatar(
                                // radius: 20,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.add,color: Colors.black,size: 20),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 18,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (double value) {  },
                        ),
                        SizedBox(width: 8,),
                        Text('5.0 (7,932 reviews)'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8,right: 95),
                    child: ReadMoreText(
                      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read More',
                      trimExpandedText: 'Read less',
                      moreStyle: getSemiBoldStyle(),
                      lessStyle: getSemiBoldStyle(),
                      style: getRegularStyle(color: ColorManager.grey1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16,bottom: 16),
                    child: Divider(color: ColorManager.white1,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Choose Size',style: getBoldStyle(),),
                      Padding(
                        padding: const EdgeInsets.only(right: 88),
                        child: Text('Color',style: getBoldStyle(),),
                      ),
                    ],
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context,index) {
                        return Text('hsjfl');
                      }
                  )
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}