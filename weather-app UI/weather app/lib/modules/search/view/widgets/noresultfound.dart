import 'package:flutter/material.dart';

class NoResultFound extends StatefulWidget {
  const NoResultFound({Key? key}) : super(key: key);

  @override
  _NoResultFoundState createState() => _NoResultFoundState();
}

class _NoResultFoundState extends State<NoResultFound> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.3,
          ),
          Text(
            "Oops..!",
            style:
                TextStyle(fontSize: 26, color: Colors.white.withOpacity(0.6)),
          ),
          const SizedBox(
            height: 22,
          ),
          Image.asset(
            "assets/ufo1.png",
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.width * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 22,
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 60,
                right: 60,
                top: 12,
              ),
              child: Text(
                "We can't find a city you are looking for maybe a little spelling mistake?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16, color: Colors.white.withOpacity(0.7)),
              ))
        ],
      ),
    );
  }
}
