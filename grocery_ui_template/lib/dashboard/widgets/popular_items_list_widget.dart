import 'package:flutter/material.dart';
import 'package:grocery_ui_template/dashboard/widgets/popular_item_widget.dart';

class PopularItemsListWidget extends StatefulWidget {
  @override
  _PopularItemsListWidgetState createState() => _PopularItemsListWidgetState();
}

class _PopularItemsListWidgetState extends State<PopularItemsListWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  final List<String> items = <String>[
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 5",
  ];  // this list just for refrence count , not being used

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _getPopularItemsGrid();
  }

  Widget _getPopularItemsGrid({BuildContext context}) {
    return GridView(
        primary: false,
        shrinkWrap: true,
        padding: EdgeInsets.only(bottom: 20.0),
        // physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 25.0,
            crossAxisSpacing: 20.0,
            childAspectRatio: 0.8,
            crossAxisCount: 2),
        children: List.generate(
          items.length,
          (_index) {
            //Animate grid items individual
            int count = items.length;
            double _beginTime = (1 / count) * _index;

            CurvedAnimation _curveAnimation = CurvedAnimation(
                curve: Interval(_beginTime, 1.0, curve: Curves.fastOutSlowIn),
                parent: _controller);
            Tween<double> _offset = Tween<double>(
              begin: 0.0,
              end: 1.0,
            );

            _animation = _offset.animate(_curveAnimation);
            _controller.forward();
            return PopularItemWidget(
              animation: _animation,
              controller: _controller,
              index: _index,
            );
          },
        ));
  }
}
