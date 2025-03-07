import 'package:flutter/material.dart';
import 'checkPalinDrome.dart';
import 'inputField.dart';

class Historylist {
  final List<String> history = <String>[];

  void addHistory(String input) {
    history.add(input);
  }

  void clearHistory() {
    history.clear();
  }
}

class HistorylistWidget extends StatefulWidget {
  final Historylist historylist;

  const HistorylistWidget({Key? key, required this.historylist}) : super(key: key);

  @override
  _HistorylistWidgetState createState() => _HistorylistWidgetState();
}

class _HistorylistWidgetState extends State<HistorylistWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            setState(() {
              widget.historylist.clearHistory();
            });
          },
          child: const Text('Clear History'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: widget.historylist.history.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(widget.historylist.history[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
