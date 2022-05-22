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
          memberData: MemberData(
              "Accesarea paginii acasa",
              "Se apasa pe iconita cu o casa din bara de navigatie de jos",
              "https://www.clausweb.ro/intrebari-frecvente/wp-content/uploads/2015/06/notfound.png"),
        ),
        MemberCard(
          memberData: MemberData(
              "Folosirea paginii Curse",
              "Se apasa pe iconita cu o masina din bara de navigatie de jos",
              "https://www.clausweb.ro/intrebari-frecvente/wp-content/uploads/2015/06/notfound.png"),
        ),
        MemberCard(
          memberData: MemberData(
              "Accesarea paginii Echipa noastra",
              "Se apasa pe iconita cu o palarie de absolvent, pentru ca speram sa ajungem si noi in anul 2",
              "https://www.clausweb.ro/intrebari-frecvente/wp-content/uploads/2015/06/notfound.png"),
        ),
        MemberCard(
          memberData: MemberData(
              "Accesarea paginii Ajutor",
              "Deja esti pe ea ??????",
              "https://www.clausweb.ro/intrebari-frecvente/wp-content/uploads/2015/06/notfound.png"),
        )
      ],
    );
  }
}

class MemberCard extends StatelessWidget {
  final MemberData memberData;
  MemberCard({Key? key, required this.memberData}) : super(key: key);
  final titleTextStyle = TextStyle(
      color: Colors.blue[50], fontWeight: FontWeight.bold, fontSize: 20);
  final descriptionTextStyle = TextStyle(
      color: Colors.blue[100], fontWeight: FontWeight.bold, fontSize: 15);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                memberData.title,
                style: titleTextStyle,
                textAlign: TextAlign.start,
              ),
              Text(
                memberData.description,
                style: descriptionTextStyle,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Image.network(memberData.imageLink),
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
