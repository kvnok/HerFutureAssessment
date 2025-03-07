
class Historylist {
  final List<String> history = <String>[];

  void addHistory(String input) {
    history.add(input);
  }

  void clearHistory() {
    history.clear();
  }
}


