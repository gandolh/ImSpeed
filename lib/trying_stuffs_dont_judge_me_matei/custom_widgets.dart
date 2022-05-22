import 'package:flutter/material.dart';
import 'dart:math' as math;

class BuildSample extends StatelessWidget {
  const BuildSample({Key? key}) : super(key: key);

  Color randomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Flutter is fun'),
        ),
        body: ListView.builder(
          itemBuilder: (_, index) {
            return Container(color: randomColor(), width: 500, height: 500);
          },
        ),
      ),
    );
  }
}

class ScrollPower extends StatelessWidget {
  const ScrollPower({Key? key}) : super(key: key);

  // scroll power
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Flutter is fun'),
        ),
        body: ListView(
          scrollDirection: Axis.horizontal,
          addAutomaticKeepAlives: false,
          children: [
            Container(
              height: 500,
              width: 500,
              color: Colors.blue,
            ),
            Container(height: 500, width: 500, color: Colors.red),
            Container(height: 500, width: 500, color: Colors.green)
          ],
        ),
      ),
    );
  }
}

class StackAndCustomComponents extends StatelessWidget {
  const StackAndCustomComponents({Key? key}) : super(key: key);

  ///stack and predefined components
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter is fun'),
        ),
        body: Stack(
          children: [
            Container(color: Colors.red, width: 100, height: 100),
            // const Positioned(child: Icon(Icons.verified), top: 25, left: 25)
            const Align(
              child: Icon(Icons.verified),
              alignment: Alignment.center,
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('pressed');
          },
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'biznis'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'scholl')
        ]),
        drawer: Drawer(child: const Text('yo!')),
      ),
    );
  }
}

class Flexbox extends StatelessWidget {
  const Flexbox({Key? key}) : super(key: key);

  /// flexbox in dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Flutter is fun'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Expanded(child: Icon(Icons.backpack), flex: 2),
          Icon(Icons.leaderboard),
          Icon(Icons.person)
        ],
      ),
    ));
  }
}

class CenteredElement extends StatelessWidget {
  const CenteredElement({Key? key}) : super(key: key);

  ///Center wrapping widgets
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Flutter is fun'),
      ),
      body: Container(
        child: Center(
            child: const Padding(
                child: Text("hi mom!"), padding: EdgeInsets.all(10))),
      ),
    ));
  }
}

class BasicSample extends StatelessWidget {
  const BasicSample({Key? key}) : super(key: key);

  /// top left with margin and background color
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Flutter is fun'),
      ),
      body: Container(
          child: const Text('Hi mom ! :D'),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(100),
          color: Colors.red,
          height: 100,
          width: 100),
    ));
  }
}

class StatefullComponent extends StatefulWidget {
  const StatefullComponent({Key? key}) : super(key: key);

  @override
  State<StatefullComponent> createState() => _StatefullComponentState();
}

class _StatefullComponentState extends State<StatefullComponent> {
  int count = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter is amazing'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        body: Center(
          child: Text(
            '$count',
            style: TextStyle(fontSize: 60),
          ),
        ),
      ),
    );
  }
}

class TabsSamplePage1 extends StatelessWidget {
  const TabsSamplePage1({Key? key}) : super(key: key);

  /// top left with margin and background color
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Flutter is fun'),
        ),
        body: ElevatedButton(
          child: const Text('Navigate'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const TabsSamplePage2(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class TabsSamplePage2 extends StatelessWidget {
  const TabsSamplePage2({Key? key}) : super(key: key);

  /// top left with margin and background color
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Flutter is fun'),
      ),
      body: Container(
          child: const Text('Hi mom ! :D'),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(100),
          color: Colors.red,
          height: 100,
          width: 100),
    ));
  }
}
