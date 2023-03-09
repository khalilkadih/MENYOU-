import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 33),
          itemCount: 12,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: GridTile(
                footer: GridTileBar(
                  backgroundColor: const Color.fromARGB(66, 73, 127, 110),
                  trailing: IconButton(
                      color: Color.fromARGB(255, 62, 94, 70),
                      onPressed: () { },
                      icon: Icon(Icons.add)),

                  leading: Text("\$12.99"),

                  title: Text("khalil",),
                ),
                child: GestureDetector(
                    onTap: () { },
// use ClipRRect & Positioned
                    child: Image.asset("assets/images/me.jpg")
                ),
              ),
            );
          }),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children:   [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/test.jpg"),
                        fit: BoxFit.cover),
                  ),
                  accountName: Text("khalil el kadih",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                  accountEmail: Text("khalil@gmail.com"),
                  currentAccountPictureSize: Size.square(99),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("assets/images/me.jpg")),
                ),

                ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () { }
                ),

                ListTile(
                    title: Text("My products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () { }
                ),

                ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help_center),
                    onTap: () { }
                ),

                ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () { }
                ),

              ],
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: const Text("Developed by khalil el kadih © 2023",
                  style: TextStyle(fontSize: 16)),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 76, 141, 95),
        title: const Text("Home page"),
        actions: [
          Row(
            children: [
              Stack(
                children:  [
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(211, 164, 255, 193),
                          shape: BoxShape.circle),
                      child:  const Text(
                        "8",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      )),

                  IconButton(
                      onPressed: () { },
                      icon: Icon(Icons.add_shopping_cart)),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 12),
                child: Text("\$ 128"),
              )
            ],
          )
        ],
      ),
    );
  }
}
