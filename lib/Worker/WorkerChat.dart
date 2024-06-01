import 'package:arabic_font/arabic_font.dart';
import 'package:flutter/material.dart';
import 'package:mashura/Model/avatarclass.dart';
import 'package:mashura/daColor.dart';

class WorkerChat extends StatefulWidget {
  const WorkerChat({super.key});

  @override
  State<WorkerChat> createState() => _ClientChatState();
}

class _ClientChatState extends State<WorkerChat> {
  List<String> time = [
    'منذ 25د',
    'منذ 30د',
    'منذ 45د',
    'منذ 1.5س',
    'منذ 3س',
    'منذ 8س',
    'منذ 20يوم',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'المحادثات',
                style: ArabicTextStyle(
                    arabicFont: ArabicFont.elMessiri,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: cavatarlist.length,
                  itemBuilder: ((context, index) {
                    final avatar = cavatarlist[index];
                    return Card(
                      color: daThird,
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              DialogRoute(
                                  context: context,
                                  builder: ((context) =>
                                      Chat(data: avatar.Name))));
                        },
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        title: Text(
                          avatar.Name,
                          style: ArabicTextStyle(
                              arabicFont: ArabicFont.elMessiri,
                              fontSize: 20,
                              color: daSecondary),
                        ),
                        leading: Container(
                          width: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              avatar.Img,
                              fit: BoxFit.cover,
                              alignment: Alignment(0, -0.5),
                            ),
                          ),
                        ),
                        trailing: Text(
                          time[index],
                          style: ArabicTextStyle(
                              arabicFont: ArabicFont.elMessiri,
                              fontSize: 12,
                              color: daSecondary),
                        ),
                      ),
                    );
                  })))
        ],
      ),
    );
  }
}

class Chat extends StatefulWidget {
  final data;
  const Chat({super.key, required this.data});
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<Chat> {
  final List<String> _messages = [];
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _messages.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.data,
          style: ArabicTextStyle(
              arabicFont: ArabicFont.elMessiri,
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    _messages[index],
                    style: ArabicTextStyle(
                        arabicFont: ArabicFont.elMessiri, fontSize: 18),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'أكتب رسالتك',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
