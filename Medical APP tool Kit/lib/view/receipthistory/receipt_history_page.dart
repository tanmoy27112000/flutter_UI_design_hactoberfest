import 'package:drsimple/services/get_services.dart';
import 'package:drsimple/services/post_service.dart';
import 'package:drsimple/view/receipthistory/create_recipe_page.dart';
import 'package:drsimple/widgets/customapp_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

import '../../variables/text_constants.dart';
import '../../variables/ui_variables.dart';
import '../../widgets/globalwidgets/global_container2.dart';
import '../../widgets/globalwidgets/global_text.dart';

class ReceiptHistory extends StatefulWidget {
  const ReceiptHistory({Key? key}) : super(key: key);

  @override
  State<ReceiptHistory> createState() => _ReceiptHistoryState();
}

class _ReceiptHistoryState extends State<ReceiptHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Stack(
            children: [
              Positioned(
                child: GlobalContainer2(
                  textValue1: 'Rezept wählen',
                  textValue2:
                      'Zum Hinzufügen auf das Plus klicken, zum Löschen nach rechts wischen',
                  containerheight: 0.25,
                  fontsize1: 0.030,
                  fontsize2: 0.020,
                ),
              ),
              FutureBuilder(
                  future: Get.find<GetAPIServices>().getRecipies(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.41),
                        child: loading(context),
                      );
                    } else if (snapshot.data == null) {
                      return Container();
                    } else if (snapshot.connectionState ==
                        ConnectionState.waiting) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.41),
                        child: loading(context),
                      );
                    } else {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.21),
                        child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.07,
                                  right:
                                      MediaQuery.of(context).size.width * 0.07,
                                ),
                                child: Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.102,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: mainThemeSecondryColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.4),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Slidable(
                                      key: ValueKey(UniqueKey()),
                                      startActionPane: ActionPane(
                                          motion: const ScrollMotion(),
                                          children: [
                                            SlidableAction(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                bottomLeft: Radius.circular(20),
                                              ),
                                              onPressed: (context) async {
                                                await Get.find<PostApiService>()
                                                    .removeRecipe(
                                                        id: snapshot.data[index]
                                                            ["id"]);
                                                setState(() {});
                                              },
                                              backgroundColor: Colors.red,
                                              foregroundColor: Colors.white,
                                              label: 'Löschen',
                                            ),
                                          ]),
                                      child: ReceiptReferralTile(
                                        leadingimage: const AssetImage(
                                            'assets/icons/report.png'),
                                        title: snapshot.data[index]["name"],
                                        mg: snapshot.data[index]["power"],
                                        id: snapshot.data[index]["id"],
                                      )),
                                ));
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 15,
                            );
                          },
                        ),
                      );
                    }
                  })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: mainThemeColor,
        onPressed: () {
          Get.to(() => const CreateRecipePage());
        },
        child: Icon(
          Icons.add,
          size: 25,
        ),
      ),
    ));
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////
