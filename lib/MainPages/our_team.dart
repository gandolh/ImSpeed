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
          memberData: MemberData("Gusatu Cristian", "Gandolh",
              "https://wallpaperaccess.com/full/2565477.jpg"),
        ),
        MemberCard(
          memberData: MemberData("Bran Alexandru", "Barnie",
              "https://media.discordapp.net/attachments/820946780837380106/978019725701431296/269014675_3178122402459080_3212260788257963330_n.jpg"),
        ),
        MemberCard(
          memberData: MemberData("Raduletu Horia", "XBisharp",
              "https://scontent-otp1-1.xx.fbcdn.net/v/t1.6435-9/80715051_652889255249705_4843661020310274048_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=hfqDcpvT6nkAX81T02o&_nc_ht=scontent-otp1-1.xx&oh=00_AT9sgQRjO9LqV_Ay9OeUklAzwuhuKOKmbNgXJaUZZnXVzw&oe=62AE5EEB"),
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
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      memberData.nume,
                      style: defaultTextStyle,
                    ),
                    Text(
                      "<< " + memberData.alias + " >>",
                      style: defaultTextStyle,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: CircleAvatar(
                        radius: 60, // Image radius
                        backgroundImage: NetworkImage(memberData.imageLink),
                      ),
                    )
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
  String imageLink;
  MemberData(this.nume, this.alias, this.imageLink);
}
