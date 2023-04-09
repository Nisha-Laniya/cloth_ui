import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:cloth_ui/resources/asset_manager.dart';
import 'package:cloth_ui/resources/color_manager.dart';
import 'package:cloth_ui/resources/style_manager.dart';
import 'package:cloth_ui/screens/checkout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:provider/provider.dart';
import '../provider/bottom_navigation_provider.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context, listen: false);

    List<String> images = [
      ImageAssets.cloth1,
      ImageAssets.cloth2,
      ImageAssets.cloth3,
      ImageAssets.cloth4,
      ImageAssets.cloth5,
    ];


    print("build");
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Text(
                            'Hello, Welcome 👋',
                            style: getRegularStyle(),
                          ),
                        ),
                        Text(
                          'Nisha Patel',
                          style: getBoldStyle(fontSize: 16)
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        IconAssets.profile,
                      ),
                      backgroundColor: ColorManager.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24, left: 24, right: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: SizedBox(
                          height: 49,
                          child: TextFormField(
                            autofocus: false,
                            cursorColor: ColorManager.grey1,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search,
                                color: ColorManager.grey,
                                size: 25,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      const BorderSide(color: ColorManager.white1)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide:
                                      const BorderSide(color: ColorManager.grey1),),
                              hintText: 'Search Clothes..',
                              isDense: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutScreen()));
                      },
                      child: SvgPicture.asset(IconAssets.filter,
                          height: 48, width: 49),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: DefaultTabController(
                  length: 4,
                  child: ButtonsTabBar(
                      backgroundColor: ColorManager.tabBackgroundColor,
                      unselectedBorderColor: ColorManager.white1,
                      borderWidth: 1,
                      radius: 8,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                      labelStyle: getMediumStyle(color: ColorManager.white),
                      unselectedLabelStyle: getMediumStyle(color: ColorManager.unselectedLabelColor),
                      tabs: [
                        Tab(
                          text: 'All Items',
                          icon: SvgPicture.asset(IconAssets.category),
                          // icon: Icon(Icons.add),
                        ),
                        Tab(
                          text: 'Hat',
                          icon: Image.asset(IconAssets.hat),
                        ),
                        Tab(
                          text: 'Dress',
                          icon: Image.asset(
                            IconAssets.clothes,
                            color: ColorManager.black,
                          ),
                        ),
                        Tab(
                          text: 'Watch',
                          icon: Image.asset(IconAssets.watch),
                        ),
                      ],),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: MasonryGridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 23,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailScreen(image: images[index],)));
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                        images[index]),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 12,
                                top: 12,
                                child: SvgPicture.asset(
                                  IconAssets.like,
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 4),
                            child: Text(
                              'Modern light Clothes',
                              style: getSemiBoldStyle()
                            ),
                          ),
                          Text(
                            'Dress modern',
                            style: getRegularStyle(color: ColorManager.grey2,fontSize: 12),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$212.99',
                                  style: getSemiBoldStyle()
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: ColorManager.starColor,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      '5.0',
                                      style: getRegularStyle(fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    }),
              ),
              const SizedBox(height: 70,)
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Consumer<BottomNavigationProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return CustomNavigationBar(
              backgroundColor: ColorManager.bottomBackgroundColor,
              strokeColor: ColorManager.white,
              selectedColor: ColorManager.white,
              unSelectedColor: ColorManager.grey,
              iconSize: 30,
              // scaleFactor: 0.5,
              borderRadius: const Radius.circular(40),
              isFloating: true,
              items: [
                CustomNavigationBarItem(
                  icon: value.selectedIndex == 0
                      ? const Icon(Icons.home)
                      : const Icon(Icons.home_outlined),
                ),
                CustomNavigationBarItem(
                  icon: value.selectedIndex == 1
                      ? const Icon(Icons.shopping_bag)
                      : const Icon(Icons.shopping_bag_outlined),
                ),
                CustomNavigationBarItem(
                  icon: value.selectedIndex == 2
                      ? const Icon(Icons.favorite)
                      : const Icon(Icons.favorite_border),
                ),
                CustomNavigationBarItem(
                  icon: value.selectedIndex == 3
                      ? const Icon(Icons.person)
                      : const Icon(Icons.person_outline),
                ),
              ],
              currentIndex: value.selectedIndex,
              onTap: (int index) {
                bottomNavigationProvider.changeIndex(index);
              });
        },
      ),
    ));
  }
}
