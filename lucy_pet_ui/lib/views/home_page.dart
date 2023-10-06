import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lucy_pet/utils/app_style.dart';
import 'package:lucy_pet/utils/size_config.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;
  void _onItemTaped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List<String> dogs =[
      'dog_marly.png',
      'dog_cocoa.png',
      'dog_walt.png'
    ];
      List<String> name =[
      'Marly',
      'Cocoa',
      'Walt'
    ];
     List<String> cat =[
      'cat_alyx.png',
      'cat_brook.png',
      'cat_marly.png'
    ];
      List<String> cart_name =[
      'Alyx',
      'Brook',
      'Marly'
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _onItemTaped,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: _selectIndex == 0
                ? SvgPicture.asset("assets/home_selected.svg")
                : SvgPicture.asset("assets/home_unselected.svg"),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: _selectIndex == 1
                ? SvgPicture.asset("assets/cart_selected.svg")
                : SvgPicture.asset("assets/cart_unselected.svg"),
          ),
          BottomNavigationBarItem(
            label: 'profile',
            icon: _selectIndex == 2
                ? SvgPicture.asset("assets/profile_selected.svg")
                : SvgPicture.asset("assets/profile_unselected.svg"),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/nav_icon.svg',
                    width: 18,
                  ),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: kRed,
                    backgroundImage: NetworkImage(
                        "https://cdn3d.iconscout.com/3d/premium/thumb/man-avatar-6299539-5187871.png?f=webp"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    bottom: 0,
                    right: 0,
                    child: Image.asset(
                      fit: BoxFit.cover,
                      'assets/images/welcome_message.png',
                    ),
                  ),
                  Positioned(
                    left: SizeConfig.blockSizeHorizontal! * 39,
                    top: 0,
                    bottom: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Hello",
                              style: kSourceSanProRegular.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              "Roqeeb",
                              style: kSourceSanProMedium.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Ready for an amazing and lucky ",
                          style: kSourceSanProRegular.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              height: 30,
              child: Row(
                children: [
                  Text(
                    "Dogs",
                    style: kSourceSanProBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: dogs.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    height: 200,
                    margin: EdgeInsets.only(
                      left: index == 0 ? 30 : 15,
                      right: index == 10 - 1 ? 30 : 0,
                    ),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11), color: kWhite),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(11),
                          child: Image.asset(
                            "assets/images/${dogs[index]}",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: SizeConfig.blockSizeVertical! * 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.5),
                                  color: kLightOrange),
                              child: Center(
                                child: Text(
                                  "BANANA",
                                  style: kSourceSanProBold.copyWith(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 2.5,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                color: kRed,
                                size: 16,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Text(
                              name[index],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kSourceSanProBold.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3.5,
                                  color: kGrey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "17 0ctober 2021",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kSourceSanProRegular.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.5,
                                  color: kLightGrey),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
              height: 30,
              child: Row(
                children: [
                  Text(
                    "Cats",
                    style: kSourceSanProBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 5.5,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: cat.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    height: 200,
                    margin: EdgeInsets.only(
                      left: index == 0 ? 30 : 15,
                      right: index == 10 - 1 ? 30 : 0,
                    ),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11), color: kWhite),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(11),
                          child: Image.asset(
                            "assets/images/${cat[index]}",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: SizeConfig.blockSizeVertical! * 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.5),
                                  color: kLightOrange),
                              child: Center(
                                child: Text(
                                  "BANANA",
                                  style: kSourceSanProBold.copyWith(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 2.5,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite_border_outlined,
                                color: kRed,
                                size: 16,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Text(
                              cart_name[index],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kSourceSanProBold.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 3.5,
                                  color: kGrey),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "17 0ctober 2021",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: kSourceSanProRegular.copyWith(
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 2.5,
                                  color: kLightGrey),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
