import 'package:flutter/material.dart';
import 'package:grocery_ui_template/app_theme.dart';
import 'package:grocery_ui_template/dashboard/widgets/cart_icon_widget.dart';
import 'package:grocery_ui_template/details/widgets/buy_now_button_widget.dart';
import 'package:grocery_ui_template/details/widgets/item_details_appbar_widget.dart';
import 'package:grocery_ui_template/details/widgets/price_tag_widget.dart';
import 'package:grocery_ui_template/details/widgets/semi_circular_cart_icon_widget.dart';

class ItemsDetailsPage extends StatefulWidget {
  ItemsDetailsPage({Key key}) : super(key: key);

  @override
  _ItemsDetailsPageState createState() => _ItemsDetailsPageState();
}

class _ItemsDetailsPageState extends State<ItemsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final double _imageDimension = MediaQuery.of(context).size.width * 2;
    final double _headerHeight = MediaQuery.of(context).size.height * 0.35;
    return Scaffold(
      backgroundColor: AppTheme.appGreyBackgroundColor,
      body: CustomScrollView(
        slivers: [
          ItemDetailsAppbarWidget(headerHeight: _headerHeight),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              Container(
                color: AppTheme.appGreyBackgroundColor,
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Twisty Fried Potatoes',
                            style: AppTheme.itemDetailsTitleStyle),
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('₹ 280.00', style: AppTheme.itemDetailsPriceStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('4.4',
                                style: AppTheme.itemDetailsQuantityStyle),
                            Icon(
                              Icons.star,
                              color: AppTheme.primaryColor,
                              size: 20.0,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Row(
                      children: [
                        PriceTagWidget(),
                        SizedBox(
                          width: 17.0,
                        ),
                        PriceTagWidget(),
                        SizedBox(
                          width: 17.0,
                        ),
                        PriceTagWidget(),
                      ],
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Text(
                      'A lot of pan fried potatoes (or crispy breakfast taters) take wayyy longer than they should. You\'re first asked to boil the potatoes then chop and fry them. We can hardly think of anything more annoying. Especially if you\'re feeling lazy, hungover, or rushed—or all of the above. The truth is, you don\'t need to pre-cook the potatoes at all. You just need to slice \'em thin and choose the best oils...plural! Below are our top tips for pan-fried potato perfection.',
                      style: AppTheme.itemDetailsDescriptionStyle,
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SemiCircularCartIconWidget(),
                        SizedBox(
                          width: 25.0,
                        ),
                        BuyNowButtonWidget(),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
