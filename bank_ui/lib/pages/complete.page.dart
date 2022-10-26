import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widget/elevated.button.dart';

class CompletePage extends StatelessWidget {
  const CompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.indigo,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(18),
          ),
        ),
        leading: InkWell(
          onTap: () => context.go('/home-page'),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Image.asset(
              'assets/menu.png',
              color: Colors.white,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.notification_add_rounded,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            Text(
              'Complete',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.headline5!.fontSize,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.indigo[300],
              child: Image.asset(
                'assets/tick.png',
                color: Colors.white,
                height: size.height * 0.07,
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Text(
              '\$ 45',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.headline5!.fontSize,
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Text(
              'paid To:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.headline6!.fontSize,
              ),
            ),
            SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.7,
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: size.height * 0.1,
                    width: size.width * 0.14,
                    color: Colors.indigo[300],
                    child: const Center(
                      child: Text(
                        'A',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                        ),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  'Albert',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Theme.of(context).textTheme.headline6!.fontSize,
                  ),
                ),
                subtitle: const Text(
                  'albert_tyrner@mail.com',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Text(
              'Transaction Id',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Theme.of(context).textTheme.headline5!.fontSize,
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Text(
              '1234 5678 9012 4567',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            CustomElevatedButton(
              text: 'Done',
              onPressed: () => context.go('/home-page'),
              fixedSize: Size(
                size.width * 0.6,
                size.height * 0.06,
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Text(
              'Share Recipt',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
                fontSize: Theme.of(context).textTheme.headline6!.fontSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
