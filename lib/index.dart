import 'package:flutter/material.dart';

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
              const Text(
                'My Cards',
                style: TextStyle(fontSize: 22, color: Colors.white),
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
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: const [
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc),
                  title: Text(
                    'Uber',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('@2:45 am est'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SizedBox(height: 30, child: Text('data')), Text("-15.75")],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
