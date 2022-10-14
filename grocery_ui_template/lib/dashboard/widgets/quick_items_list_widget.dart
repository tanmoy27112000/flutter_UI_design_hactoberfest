import 'package:flutter/material.dart';
import 'package:grocery_ui_template/dashboard/widgets/quick_item_widget.dart';

class QuickItemsListWidget extends StatefulWidget {
  @override
  _QuickItemsListWidgetState createState() => _QuickItemsListWidgetState();
}

class _QuickItemsListWidgetState extends State<QuickItemsListWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

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
    return _getQuickItemsUI(context: context);
  }

  Widget _getQuickItemsUI({BuildContext context}) {
    List<String> _quickList = ['1', '2', '3']; // this list just for refrence count , not being used
    return Container(
        height: 140.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            _quickList.length,
            (_index) {
              int count = _quickList.length;
              double _beginTime = (1 / count) * _index;
              CurvedAnimation _curve = CurvedAnimation(
                parent: _controller,
                curve: Interval(
                  _beginTime,
                  1.0,
                  curve: Curves.fastOutSlowIn,
                ),
              );
              Tween<double> _xOffestTween = Tween<double>(begin: 0.0, end: 1.0);
              Animation<double> _animation = _xOffestTween.animate(_curve);
              _controller.forward();
              return QuickItemWidget(
                index: _index,
                animation: _animation,
                animationController: _controller,
              );
            },
          ),
        ));
  }
}
