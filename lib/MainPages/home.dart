import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final defaultTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Un proiect realizat cu ",
                textAlign: TextAlign.center,
                style: defaultTextStyle,
              ),
              const Icon(
                Icons.favorite,
                color: Colors.white,
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'De catre echipa ',
              style: defaultTextStyle,
            ),
            const Icon(
              Icons.logo_dev,
              color: Colors.white,
            ),
            Text(' "O luna max"', style: defaultTextStyle)
          ]),
          Container(
            child: const Icon(
              Icons.access_alarms,
              color: Colors.white,
              size: 50,
            ),
            margin: const EdgeInsets.only(top: 10),
          )
        ],
      )),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(50),
      height: 350,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
    );
  }
}
