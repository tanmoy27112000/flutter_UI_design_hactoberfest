import 'package:flutter/material.dart';
import 'package:furrl_ui/Constants/message_constants.dart';
import 'package:furrl_ui/Constants/named_routes.dart';
import 'package:furrl_ui/CustomWidget/buttons.dart';
import 'package:furrl_ui/CustomWidget/hash_tags.dart';
import 'package:furrl_ui/CustomWidget/photo_name.dart';
import 'package:furrl_ui/UI/Colors/custom_colors.dart';

class Post extends StatelessWidget {
  final bool showProfile ;
  final dynamic image  ;
  const Post({Key? key, required this.showProfile, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width/1.7,
            child: showProfile ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children:  [
                const HashTags(tag: 'DailyEthics'),
                const Icon(Icons.circle,size: 10,color: CustomColors.mediumGrey),
                SimpleButton(text: 'Follow', onPress: (){})
              ],
            ):Container(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: image==null? Image.network(
                    'https://assets2.andaazfashion.com/media/images/m2-home-page/home-page-indo-western-lehenga-banner-17032023.jpg',
                    fit: BoxFit.cover,
                  ): Image.memory(image),
                ),
                Container(

                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     showProfile ? GestureDetector(
                         onTap: (){
                           Navigator.pushNamed(context, NamedRoutes.profile);
                         },
                         child: const PhotoName(showFollowerCount: true)) :Container(),
                      Column(

                        children: const [
                          CircleAvatar(

                              backgroundColor: CustomColors.grey,
                              child: Icon(Icons.upload,color: Colors.white,)),
                          SizedBox(height: 5),
                          CircleAvatar(
                              backgroundColor: CustomColors.grey,
                              child: Icon(Icons.bookmark_border,color: Colors.white,)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),

          ),
          showProfile ? Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10),
            child: Container(
                color: CustomColors.lightGrey,
                padding: const EdgeInsets.all(8),
                child: const Text(MessageConstants.postMessage ,style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)),
          ):Container()
        ],
      ),
    );
  }
}
