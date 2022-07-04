import 'package:flutter/material.dart';

class home extends StatelessWidget {
  //const home({Key? key}) : super(key: key);
  List<String> _catagories = [
    'Foods',
    'Electronics',
    'Groceries',
    'Dress',
    'Fashion',
  ];

  List product_name = ["Watch"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello Anik",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                )),
            const Text(
              "Let’s gets something?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF4F4C4C),
              ),
            ),
            SizedBox(height: 25, width: 25),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 140,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40% Off During Covid 19",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  "assets/vegetables.png",
                                  width: 115,
                                ))
                          ]),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 140,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40% Off During Covid 19",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  "assets/vegetables.png",
                                  width: 115,
                                ))
                          ]),
                    ),
                  ),
                  SizedBox(width: 40,),
                  Container(
                    height: 140,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "40% Off During Covid 19",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w600),
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  "assets/vegetables.png",
                                  width: 115,
                                ))
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("Top Categories",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                SizedBox(
                  width: 160,
                ),
                Text("View All",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.red)),
                //Text("msm",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),
              ],
            ),
            Container(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _catagories.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(child: Text(_catagories[index])),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Expanded(
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (_, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 7,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              bottom: 40,
                              left: 25,
                              height: 120,
                              width: 120,
                              child: Image.asset('assets/watch.png'
                                  /*alignment: Alignment.center,*/
                                  ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 45, top: 150),
                              child: Text(
                                'Apple Watch \n S_series',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    )));
  }
}
