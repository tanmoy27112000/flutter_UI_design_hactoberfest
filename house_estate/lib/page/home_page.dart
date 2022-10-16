import 'package:flutter/material.dart';
import 'package:house_estate/page/detail.dart';
import 'package:house_estate/widget/category_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFAFAFA),
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //! Header
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24, top: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Estate",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Best discovery ever",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.notifications_none),
                    ],
                  ),
                ),
                //! Batas Header
                //! Categories
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24, top: 24),
                  child: const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24, top: 8),
                  height: 74,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 18),
                    scrollDirection: Axis.horizontal,
                    itemCount: CategoryWidget().categoriesLogo.length,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset(
                              CategoryWidget().categoriesLogo[index],
                            ),
                          ),
                          Text(
                            CategoryWidget().categoriesName[index],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                //! Batas Categories
                const SizedBox(height: 20),
                //! Staff Picks
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24, top: 24),
                  child: const Text(
                    "Staff Picks",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24),
                  height: 181,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 4),
                    scrollDirection: Axis.horizontal,
                    itemCount: StaffPicksWidget().stackPicks.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: SizedBox(
                          width: 180,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  StaffPicksWidget().stackPicks[index],
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          StaffPicksWidget()
                                              .stackPicksTitle[index],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 2),
                                        Text(
                                          StaffPicksWidget()
                                              .stackPicksSize[index],
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff6B6978),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    StaffPicksWidget().stackPicksPrice[index],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xffF7AF4B),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                //! Batas Staff Picks
                const SizedBox(height: 24),
                //! Best Agent
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24),
                  child: const Text(
                    "Best Agents",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24),
                  height: 120,
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 4),
                    scrollDirection: Axis.horizontal,
                    itemCount: BestAgentWidget().bestAgent.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                BestAgentWidget().bestAgent[index],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  BestAgentWidget().bestAgentName[index],
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  BestAgentWidget().bestAgentSold[index],
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff6B6978),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                //! Batas Best Agent
                //! Cities
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24, top: 24),
                  child: const Text(
                    "Cities",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: CitiesWidget().cities.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detail(
                              gambar: CitiesWidget().cities[index],
                              text: CitiesWidget().citiesName[index],
                            ),
                          ),
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(left: 24, right: 24),
                          height: 90,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  CitiesWidget().cities[index],
                                  width: 90,
                                  height: 70,
                                ),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      CitiesWidget().citiesName[index],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      CitiesWidget().citiesProperty[index],
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CitiesWidget().cities[index] ==
                                      CitiesWidget().cities[0]
                                  ? Center(
                                      child: Container(
                                        width: 30,
                                        height: 16,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Hot",
                                            style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xffF7AF4B),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  : const SizedBox()
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )
                //! Batas Cities
              ],
            ),
            const SizedBox(height: 55),
          ],
        ),
      ),
    );
  }
}
