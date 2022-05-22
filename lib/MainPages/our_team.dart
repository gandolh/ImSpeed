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
      children: [
        MemberCard(
          memberData: MemberData("Gusatu Cristian", "Gandolh", ""),
        ),
        MemberCard(
          memberData: MemberData("Bran Alexandru", "Barnie", ""),
        ),
        MemberCard(
          memberData: MemberData("Raduletu Horia", "XBisharp", ""),
        )
      ],
    );
  }
}

class MemberCard extends StatelessWidget {
  final MemberData memberData;
  const MemberCard({Key? key, required this.memberData}) : super(key: key);
  final defaultTextStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Container(
              child: Column(children: [
                Text(
                  memberData.nume,
                  style: defaultTextStyle,
                ),
                Text(
                  "<< " + memberData.alias + " >>",
                  style: defaultTextStyle,
                ),
                Image.network('https://wallpaperaccess.com/full/2565477.jpg')
              ]),
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

class MemberData {
  String nume;
  String alias;
  String imageLik;
  MemberData(this.nume, this.alias, this.imageLik);
}
