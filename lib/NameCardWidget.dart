import 'package:flutter/material.dart';

class NameCardWidget extends StatelessWidget {
  const NameCardWidget({
    Key key,
    @required this.text,
    @required TextEditingController textController,
  })  : _textController = textController,
        super(key: key);

  final String text;
  final TextEditingController _textController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/fig2.png",
        ),
        SizedBox(
          height: 20,
        ),
        Text(text),
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: _textController,
          decoration: InputDecoration(
            hintText: text,
            labelText: "Image Name",
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
