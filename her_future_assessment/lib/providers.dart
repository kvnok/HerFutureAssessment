import 'package:flutter_riverpod/flutter_riverpod.dart';

final historylistProvider = StateNotifierProvider<HistorylistNotifier, List<String>>((ref) {
  return HistorylistNotifier();
});

class HistorylistNotifier extends StateNotifier<List<String>> {
  HistorylistNotifier() : super([]);

  void addHistory(String input) {
    state = [...state, input];
  }

  void clearHistory() {
    state = [];
  }
}