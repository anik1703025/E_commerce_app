import 'package:flutter/material.dart';

class myadds extends StatelessWidget {
  const myadds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('My Adds'),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.amberAccent,
            indicatorWeight: 7,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.shopping_bag,
                  color: Colors.black,
                ),
                text: 'My Ads',
              ),
              Tab(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                text: 'My favorite',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 240),
              child: Row(children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 0,
                      height: 120,
                      width: 120,
                      child: Image.asset('assets/watch.png'
                          /*alignment: Alignment.center,*/
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 130),
                      child: Text(
                        'Apple watch',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: 0,
                        height: 120,
                        width: 120,
                        child: Image.asset('assets/watch.png'
                            /*alignment: Alignment.center,*/
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 130),
                        child: Text(
                          'Apple watch',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    Card(
                      elevation: 7,
                      child: ListTile(
                        leading: (Image.asset(
                          'assets/watch.png',
                          height: 40,
                        )),
                        trailing: Text(
                          '\$300',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.blue),
                        ),
                        title: Text(
                          'Apple Watch',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 6,
                      child: ListTile(
                        leading: (Image.asset(
                          'assets/watch.png',
                          height: 40,
                        )),
                        trailing: Text(
                          '\$300',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        title: Text(
                          'Apple Watch',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
