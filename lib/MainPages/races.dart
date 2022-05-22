import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Races extends StatefulWidget {
  const Races({Key? key}) : super(key: key);

  @override
  State<Races> createState() => RacesState();
}

class RacesState extends State<Races> {
  final defaultTextStyle = TextStyle(
      color: Colors.blue[50], fontWeight: FontWeight.bold, fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Neumorphic(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 50),
                margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                    depth: 8,
                    lightSource: LightSource.topLeft,
                    color: Colors.blue[300]),
                child: Center(
                    child: Text(
                  "Not Implemented yet",
                  style: defaultTextStyle,
                ))),
          ],
        ));
  }
}
