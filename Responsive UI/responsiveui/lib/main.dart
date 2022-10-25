import 'package:flutter/material.dart';
import 'package:responsiveui/size_config.dart';

// void main() => runApp(MaterialApp(home: ResponsiveUI()));
void main() => runApp(MaterialApp(home: ResponsiveUI()));

class ResponsiveUI extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContainerWidget(),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello World!',
              style: TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal * 6.0,
                // fontSize: 24,
                color: Colors.red,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 40)),
            Container(
              height: SizeConfig.blockSizeVertical * 40, // 40% of screen height
              width: SizeConfig.blockSizeHorizontal * 20, // 20% of screen width
              // height: 100, // pixel count
              // width: 40,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
