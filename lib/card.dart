import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class CCard extends StatelessWidget {
  const CCard({super.key});

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
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Cards',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 10, child: Text('')),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'assets/images/c1.jpeg',
                      height: 200,
                      width: 320,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'assets/images/c2.jpg',
                      height: 200,
                      width: 320,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.asset(
                      'assets/images/c3.jpg',
                      height: 200,
                      width: 320,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20, child: Text('')),
            const Center(
                child: Text(
              'HSBS Bank Card',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )),
            const Center(child: Text('Details')),
            const SizedBox(height: 20, child: Text('')),
            Center(
              child: Container(
                width: 250,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 161, 215, 234),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color.fromARGB(255, 253, 255, 255),
                      width: 1.0,
                      style: BorderStyle.solid),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 125,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text('BALANCE'),
                            Text(
                              '\$ 650',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      decoration: const BoxDecoration(
                          border: Border(
                              left: BorderSide(
                        color: Color.fromARGB(255, 150, 153, 151),
                        width: 1,
                      ))),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              child: Column(
                                children: [
                                  Column(
                                    children: [
                                      Text('Income'),
                                      Text(
                                        '\$ 2000',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Container(
                              width: 120,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                color: Color.fromARGB(255, 150, 153, 151),
                                width: 1,
                              ))),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Text('Expenses'),
                                        Text(
                                          '-\$ 1350',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20, child: Text('')),
            Container(
              width: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color.fromARGB(255, 216, 216, 218))),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Show Expenses'), Icon(Icons.arrow_right)],
                ),
              ),
            ),
            Container(
              width: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color.fromARGB(255, 216, 216, 218))),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Show Income'), Icon(Icons.arrow_right)],
                ),
              ),
            ),
            Container(
              width: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color.fromARGB(255, 216, 216, 218))),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Saving Account'), Icon(Icons.arrow_right)],
                ),
              ),
            ),
            Container(
              width: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color.fromARGB(255, 216, 216, 218))),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Add New Card'), Icon(Icons.arrow_right)],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
