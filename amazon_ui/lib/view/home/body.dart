import 'dart:ui';

import 'package:amazon_clone/componants/category/suggest_wedget.dart';
import 'package:amazon_clone/componants/cusom_divider_text.dart';
import 'package:amazon_clone/componants/product_column_list.dart';
import 'package:amazon_clone/view/widgets/basic_ad.dart';
import 'package:amazon_clone/view/widgets/categories.dart';
import 'package:amazon_clone/view/widgets/category_show.dart';
import 'package:amazon_clone/view/widgets/top_deal.dart';
import 'package:amazon_clone/view/widgets/white_space.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../widgets/category_show2.dart';
import '../widgets/explore_departments.dart';
import '../widgets/location_widget.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: MyColors.background,
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              const LocationWidget(),

              // ad @@@@@@@@@@@@@ ad @@@@@@@@@@@@@@@@@@@@@@
              ClipRRect(
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [Colors.transparent, Colors.black])
                        .createShader(
                            Rect.fromLTRB(0, 0, rect.width, rect.height));
                  },
                  blendMode: BlendMode.dstIn,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5,
                      sigmaY: 10,
                    ),
                    child: Image.network(
                      'https://www.themakersmap.com/wp-content/uploads/2020/10/amazon-prime-day.jpg',
                      // scale: 1,
                    ),
                  ),
                ),
              ),
              //First List:
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // Container @@@@@@@@@
                      CategoryList(
                          image: 'assets/images/category1.png', text: 'Oculus'),

                      CategoryList(
                          image: 'assets/images/category2.png',
                          text: 'Shop Laptops \n& Taplets'),
                      CategoryList(
                          image: 'assets/images/category3.png',
                          text: 'Women\'s Fashion'),
                      CategoryList(
                          image: 'assets/images/category4.png',
                          text: 'Beauty \nPicks'),
                    ],
                  ),
                ),
              ),
              //@@@@@@@ Sign in Reminder ############
              Column(
                children: [
                  // const SignInReminder(),
                  const SuggestWedget(),

                  const TopDealWidget(),

                  // @@@@@ Category show @@@@@@
                  CategoryShowWedget(
                    title: 'Heals & Beauty Products',
                    imageUrl: const [
                      'assets/images/p1.png',
                      'assets/images/p2.png',
                      'assets/images/p3.png',
                      'assets/images/p4.png',
                      'assets/images/p5.png',
                      'assets/images/p6.png',
                      'assets/images/p7.png',
                      'assets/images/p8.png',
                      'assets/images/p9.png',
                    ],
                    buttonText: 'See more',
                  ),
                  CategoryShowWedget2(
                    // crossCount: 3,
                    // crossAxisSpacing: 9,
                    // childAspectRatio: 1,
                    // mainAxisSpacing: 9,
                    title: 'Discount Electronics',
                    imageUrl: const [
                      'assets/images/discountElectronics/d1.JPG',
                      'assets/images/discountElectronics/d2.JPG',
                      'assets/images/discountElectronics/d3.JPG',
                      'assets/images/discountElectronics/d4.JPG',
                    ],
                    buttonText: 'See more',
                  ),
                  CategoryShowWedget2(
                    // crossCount: 3,
                    // crossAxisSpacing: 9,
                    // childAspectRatio: 1,
                    // mainAxisSpacing: 9,
                    title: 'Girl\'s everyDay essentials',
                    imageUrl: const [
                      'assets/images/GirlsEveryDayEssentials/g1.JPG',
                      'assets/images/GirlsEveryDayEssentials/g2.JPG',
                      'assets/images/GirlsEveryDayEssentials/g3.JPG',
                      'assets/images/GirlsEveryDayEssentials/g4.JPG',
                    ],
                    buttonText: 'See more',
                  ),
                  // @@@@@@@ AD @@@@@@@@@@@
                  BasicAd(
                    imageUrl: 'assets/images/basicAd.PNG',
                  ),
                  ProductColumnWidget(
                    pListTitle: 'International Top Sellers for you',
                    pImageUrl1:
                        'assets/images/internationalTopSellers/GRaid.PNG',
                    pTitle1: 'SanDisk professional 12TB G-RAID',
                    pProductCount1:
                        '2 - Enterprice-Class 2-Bay Desktopkmvmldsdsdsf',
                    pPrice1: '659',
                    pImageUrl2:
                        'assets/images/internationalTopSellers/GRaid.PNG',
                    pTitle2: 'SanDisk professional 12TB G-RAID',
                    pProductCount2: '2 - Enterprice-Class 2-Bay Desktopkmvml',
                    pPrice2: '659',
                    pImageUrl3:
                        'assets/images/internationalTopSellers/GRaid.PNG',
                    pTitle3: 'SanDisk professional 12TB G-RAID',
                    pProductCount3: '2 - Enterprice-Class 2-Bay Desktopkmvml',
                    pPrice3: '659',
                  ),
                  // @@@@@@@ AD @@@@@@@@@@@
                  BasicAd(
                    imageUrl: 'assets/images/basicAd.PNG',
                  ),

                  BasicAd(
                    imageUrl: 'assets/images/basicAd1.PNG',
                  ),
                  // @@ explore @@
                  const CustomDividerText(),
                  ExploreDepartments(
                    title: 'ExploreDepartments',
                    imageUrl: const [
                      'assets/images/ExploreDepartments/e1.jpg',
                      'assets/images/ExploreDepartments/e2.jpg',
                      'assets/images/ExploreDepartments/e3.jpg',
                      'assets/images/ExploreDepartments/e4.jpg',
                      'assets/images/ExploreDepartments/e5.jpg',
                      'assets/images/ExploreDepartments/e6.jpg',
                    ],
                    dtitle1: 'Beauty',
                    dtitle2: 'Home and Kitchen',
                    dtitle3: 'Sports and Outdoors',
                    dtitle4: 'Electronics',
                    dtitle5: 'Outdoor Clothing',
                    dtitle6: 'Pet Suplies',
                    buttonText: 'All Departments',

                    // departmentTitles: {
                    //   'assets/images/ExploreDepartments/e1.jpg': 'Beauty',
                    //   // 'assets/images/ExploreDepartments/e2.jpg': '2',
                    //   // 'assets/images/ExploreDepartments/e3.jpg': '3',
                    //   // 'assets/images/ExploreDepartments/e4.jpg': '4',
                    //   // 'assets/images/ExploreDepartments/e5.jpg': '5',
                    //   // 'assets/images/ExploreDepartments/e6.jpg': '6',
                    // },
                  ),
                  // @@@@@ end show @@@@@@
                  const WhiteSpase(),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
