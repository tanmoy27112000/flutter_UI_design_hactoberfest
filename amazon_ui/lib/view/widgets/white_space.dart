import 'package:flutter/material.dart';

import '../../utils/size_config.dart';

class WhiteSpase extends StatelessWidget {
  const WhiteSpase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        width: MySizeConfig.safeBlockHorizontal !*100,
      height: MediaQuery.of(context).size.height * 0.019,
    );
  }
}
