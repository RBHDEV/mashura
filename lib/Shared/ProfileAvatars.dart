import 'package:flutter/material.dart';
import 'package:mashura/Client/ClientChat.dart';
import 'package:mashura/Model/avatarclass.dart';
import 'package:mashura/daColor.dart';

class ListofAvatars extends StatefulWidget {
  const ListofAvatars({super.key});

  @override
  State<ListofAvatars> createState() => _ListofAvatarsState();
}

class _ListofAvatarsState extends State<ListofAvatars> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: daPrimary.withOpacity(0.2),
      ),
      child: ListView.builder(
        scrollDirection:
            Axis.horizontal, // Make the ListView scroll horizontally
        itemCount: avatarlist.length,
        itemBuilder: (context, index) {
          final avatar = avatarlist[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    DialogRoute(
                        context: context,
                        builder: ((context) => Chat(data: avatar.Name))));
              },
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    child: Stack(children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            avatar.Img,
                            fit: BoxFit.cover,
                            alignment: Alignment(0, -0.5),
                          ),
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ]),
                  ),
                  Text(avatar.Name),
                ],
              )),
            ),
          );
        },
      ),
    );
  }
}
