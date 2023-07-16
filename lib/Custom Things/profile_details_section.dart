import 'package:flutter/material.dart';
import 'package:my_portfolio/Models/launch_url.dart';
import 'package:my_portfolio/Models/my_strings.dart';

class ProfileDetailsSection extends StatelessWidget {
  const ProfileDetailsSection({
    Key? key,
    required List<Map<String, dynamic>> contactButtons,
  })  : _contactButtons = contactButtons,
        super(key: key);

  final List<Map<String, dynamic>> _contactButtons;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            MyStrings.myName,
            style: TextStyle(
              fontSize: 40,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            MyStrings.myTagLine,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            MyStrings.myDescription,
            style: TextStyle(
              height: 1.6,
              fontSize: 19,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 45),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Tecnologias : ',
                style: TextStyle(
                  height: 1.6,
                  fontSize: 19,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/flutter.png'),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/dart.png'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
                backgroundColor: MaterialStateProperty.all(
                  Colors.blueGrey[700],
                ),
              ),
              onPressed: () async {
                await MyUrl.launchURL(MyStrings.myResume);
              },
              child: Text(
                "Meu Currículo",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: _contactButtons
                .map(
                  (button) => Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: IconButton(
                      onPressed: () async {
                        await MyUrl.launchURL(button["url"]);
                      },
                      color: Colors.black87,
                      style: ButtonStyle(),
                      iconSize: 45,
                      icon: Icon(
                        button["icon"],
                      ),
                      tooltip: button["tooltip"],
                    ),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
