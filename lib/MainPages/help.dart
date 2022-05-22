import 'package:flutter/material.dart';
// l-as intreba pe barnie ce a facut pe pagina de our_team
// dar probabil isi dadu shutdown pana acum...

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      addAutomaticKeepAlives: false,
      children: [
        MemberCard(
          memberData: MemberData("Accesarea paginii acasa",
              "Se apasa pe iconita cu o casa din bara de navigatie de jos", ""),
        ),
        MemberCard(
          memberData: MemberData(
              "Folosirea paginii Curse",
              "Se apasa pe iconita cu o masina din bara de navigatie de jos",
              ""),
        ),
        MemberCard(
          memberData: MemberData(
              "Accesarea paginii Echipa noastra",
              "Se apasa pe iconita cu o palarie de absolvent, pentru ca speram sa ajungem si noi in anul 2",
              ""),
        ),
        MemberCard(
          memberData: MemberData(
              "Accesarea paginii Ajutor", "Deja esti pe ea ??????", ""),
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
          Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                memberData.title,
                style: defaultTextStyle,
              ),
              Text(
                "<< " + memberData.description + " >>",
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
  String title;
  String description;
  String imageLink;
  MemberData(this.title, this.description, this.imageLink);
}
