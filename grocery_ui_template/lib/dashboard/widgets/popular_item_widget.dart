import 'package:grocery_ui_template/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:grocery_ui_template/dashboard/widgets/cart_icon_widget.dart';
import 'package:grocery_ui_template/details/screens/item_details_page.dart';

class PopularItemWidget extends StatefulWidget {
  PopularItemWidget(
      {Key key, int index, Animation animation, AnimationController controller})
      : _index = index,
        _animation = animation,
        _controller = controller,
        super(key: key);

  final int _index;
  final Animation _animation;
  final AnimationController _controller;
  @override
  _PopularItemWidgetState createState() => _PopularItemWidgetState();
}

class _PopularItemWidgetState extends State<PopularItemWidget> {
  @override
  Widget build(BuildContext context) {
    return _getPopularItem(
      context: context,
      index: widget._index,
      animation: widget._animation,
      controller: widget._controller,
    );
  }

  Widget _getPopularItem({
    BuildContext context,
    int index,
    Animation animation,
    AnimationController controller,
  }) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation.value), 0.0),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ItemsDetailsPage(),
                        ),
                      );
              },
                          child: Container(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      margin: EdgeInsets.only(
                        bottom: 15.0,
                      ),
                      decoration: BoxDecoration(
                        color: AppTheme.appGreyBackgroundColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text('Twisty Fried Potatoes',
                              style: AppTheme.cardItemTitleStyle),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('10 Kilogram',
                                  style: AppTheme.cardItemQuantityStyle),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('4.4',
                                      style: AppTheme.cardItemQuantityStyle),
                                  Icon(
                                    Icons.star,
                                    color: AppTheme.primaryColor,
                                    size: 14.0,
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('₹ 280.00',
                                  style: AppTheme.cardItemPriceStyle),
                              CartIconWidget(size: 25.0,),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/pop_item_$index.png',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}