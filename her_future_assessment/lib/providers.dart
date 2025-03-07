import 'package:flutter_riverpod/flutter_riverpod.dart';

final historylistProvider = StateNotifierProvider<HistorylistNotifier, List<Map<String, String>>>((ref) {
  return HistorylistNotifier();
});

class HistorylistNotifier extends StateNotifier<List<Map<String, String>>> {
  HistorylistNotifier() : super([]);

  void addHistory(String input, String result) {
    state = [...state, {'input': input, 'result': result}];
  }

  void clearHistory() {
    state = [];
  }
}
