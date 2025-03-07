import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers.dart';

class HistorylistWidget extends ConsumerWidget {
  const HistorylistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(historylistProvider).reversed.toList();

    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            ref.read(historylistProvider.notifier).clearHistory();
          },
          child: const Text('Clear History'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: history.length,
            itemBuilder: (BuildContext context, int index) {
              final entry = history[index];
              final isPalindrome = entry['result']!.contains('✅');
              return Center(
                child: SizedBox(
                  width: 300, // Set the desired width here
                  child: Card(
                    color: isPalindrome ? Colors.green[100] : Colors.red[100],
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      title: Text(entry['input']!),
                      subtitle: Text(entry['result']!),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
