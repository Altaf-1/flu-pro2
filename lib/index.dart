import 'package:flutter/material.dart';
import 'package:flutter_application_2/card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 39, 200, 205),
          child: ListView(
            padding: const EdgeInsets.only(top: 40, left: 40, right: 20),
            children: <Widget>[
              InkWell(
                child: const Text("X",
                    style: TextStyle(fontSize: 22, color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
               const SizedBox(height: 40, child: Text('')),
              InkWell(
                child: const Text("Home",
                    style: TextStyle(fontSize: 22, color: Colors.white)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Index()),
                  );
                },
              ),
              const SizedBox(height: 25, child: Text('')),
              InkWell(
                child: const Text("My Cards",
                    style: TextStyle(fontSize: 22, color: Colors.white)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CCard()),
                  );
                },
              ),
              const SizedBox(height: 25, child: Text('')),
              const Text(
                'Transactions',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              const SizedBox(height: 25, child: Text('')),
              const Text(
                'Budget',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              const SizedBox(height: 25, child: Text('')),
              const Text(
                'Settings',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              const SizedBox(height: 25, child: Text('')),
              const Text(
                'Add Expense',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              const SizedBox(height: 25, child: Text('')),
              const Text(
                'Currency',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transactions',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Today',
                  style: TextStyle(color: Colors.black),
                )),
            const SizedBox(
              height: 10,
              child: Text(''),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/1.png'),
                ),
                title: Text(
                  'Uber',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('@2:45 am est'),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 208, 123, 206),
                        child: FaIcon(
                          FontAwesomeIcons.plane,
                          size: 15,
                          color: Colors.white,
                        )),
                    Text(
                      "-\$15.75",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/2.jpg'),
                ),
                title: Text(
                  'Whole Foods Market',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('@8:15 am est'),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 78, 182, 234),
                        child: FaIcon(
                          FontAwesomeIcons.sprayCan,
                          size: 15,
                          color: Colors.white,
                        )),
                    Text(
                      "-\$45.00",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/3.png'),
                ),
                title: Text(
                  'Starbucks',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('@12:15 pm est'),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 106, 155, 224),
                        child: FaIcon(
                          FontAwesomeIcons.utensils,
                          size: 15,
                          color: Colors.white,
                        )),
                    Text(
                      "-\$14.50",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/4.jpg'),
                ),
                title: Text(
                  'Target',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('@2:30 est'),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 78, 182, 234),
                        child: FaIcon(
                          FontAwesomeIcons.bagShopping,
                          size: 15,
                          color: Colors.white,
                        )),
                    Text(
                      "-\$104.50",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/5.png'),
                ),
                title: Text(
                  'Booking',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('@3:15 pm est'),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 208, 123, 206),
                        child: FaIcon(
                          FontAwesomeIcons.plane,
                          size: 15,
                          color: Colors.white,
                        )),
                    Text(
                      "-\$545.00",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/6.webp'),
                ),
                title: Text(
                  'The Body Shop',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('@2:45 am est'),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 45, 73, 195),
                        child: FaIcon(
                          FontAwesomeIcons.user,
                          size: 15,
                          color: Colors.white,
                        )),
                    Text(
                      "-\$24.85",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/7.png'),
                ),
                title: Text(
                  'Delta',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('@4:40 pm est'),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CircleAvatar(
                        radius: 15,
                        backgroundColor: Color.fromARGB(255, 208, 123, 206),
                        child: FaIcon(
                          FontAwesomeIcons.plane,
                          size: 15,
                          color: Colors.white,
                        )),
                    // FaIcon(FontAwesomeIcons.plane, color: Color.fromARGB(255, 227, 140, 216),),
                    Text(
                      "-\$325.00",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
