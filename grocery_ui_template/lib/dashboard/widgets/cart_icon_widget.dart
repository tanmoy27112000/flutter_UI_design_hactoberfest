import 'package:flutter/material.dart';
import 'package:grocery_ui_template/app_theme.dart';

class CartIconWidget extends StatelessWidget {
  const CartIconWidget({
    @required double size,
    Key key,
  })  : _size = size,
        super(key: key);

  final double _size;

  @override
  Widget build(BuildContext context) {
    final double _inkSize = (_size < 25.0) ? 25.0 : _size;
    final double _iconSize = _inkSize - (_inkSize * 0.4);

    return ClipOval(
      child: Material(
        color: AppTheme.primaryColor, // button color
        child: InkWell(
          splashColor: AppTheme.primaryColor, // inkwell color
          child: SizedBox(
            width: _inkSize,
            height: _inkSize,
            child: Icon(
              Icons.shopping_cart,
              color: AppTheme.appWhiteColor,
              size: _iconSize,
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
