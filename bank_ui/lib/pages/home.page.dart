import 'package:bank_ui/data/model/feature.model.dart';
import 'package:bank_ui/data/model/transaction.model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.3,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.01,
                  left: size.width * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/menu.png',
                            color: Colors.white,
                            height: 22,
                            fit: BoxFit.contain,
                          ),
                          const Icon(
                            Icons.notification_add_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width,
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Welcome Back',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                'Nick Julian',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              const Text(
                                'Current Balance',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                '\$ 1,245',
                                style: TextStyle(
                                  fontSize: 31,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              SizedBox(
                                width: size.width * 0.7,
                                child: const Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                              right: -12,
                              top: 10,
                              child: CircleAvatar(
                                backgroundColor: Colors.indigo.shade300,
                                radius: 70,
                                child: Image.asset(
                                  'assets/dollar.png',
                                  color: Colors.grey,
                                  height: size.height * 0.1,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SizedBox(
              height: size.height * 0.23,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: feature.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      if (index == 0) {
                        context.go('/complete-page');
                      }
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: size.height * 0.07,
                            width: size.width * 0.14,
                            color: Colors.indigo[300],
                            child: Center(
                              child: feature[index].image,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Expanded(
                          child: Text(
                            feature[index].title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Recent Transaction',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: size.height * 0.4,
                child: ListView.builder(
                    itemCount: transaction.length,
                    itemBuilder: ((context, index) {
                      return ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: size.height * 0.1,
                            width: size.width * 0.14,
                            color: Colors.indigo[300],
                            child: Center(
                              child: transaction[index].image,
                              // Text(
                              //   'A',
                              //   style: TextStyle(
                              //     color: Colors.white,
                              //     fontWeight: FontWeight.bold,
                              //     fontSize: 21,
                              //   ),
                              // ),
                            ),
                          ),
                        ),
                        title: Text(
                          transaction[index].title,
                          style: const TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          transaction[index].date,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        trailing: Text(
                          '\$ ${transaction[index].amount}',
                          style: TextStyle(
                            color: transaction[index].status == false
                                ? Colors.indigo
                                : Colors.indigo[300],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    })),
              ),
            )
          ],
        ),
      ),
    );
  }
}
