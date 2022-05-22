import 'package:flutter/material.dart';

class OurTeam extends StatefulWidget {
  const OurTeam({Key? key}) : super(key: key);

  @override
  State<OurTeam> createState() => _OurTeamState();
}

class _OurTeamState extends State<OurTeam> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      addAutomaticKeepAlives: false,
      children: const [MemberCard(), MemberCard(), MemberCard()],
    );
  }
}

class MemberCard extends StatelessWidget {
  const MemberCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(50),
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      height: 500,
      width: 500,
      decoration: BoxDecoration(
        color: Colors.blue[300],
        border: const Border(
          bottom: BorderSide(width: 2, color: Colors.blue),
        ),
      ),
    );
  }
}
