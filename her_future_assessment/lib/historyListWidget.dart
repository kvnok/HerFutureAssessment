import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'providers.dart';

class HistorylistWidget extends ConsumerWidget {
  const HistorylistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final history = ref.watch(historylistProvider);

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
              return ListTile(
                title: Text(entry['input']!),
                subtitle: Text(entry['result']!),
              );
            },
          ),
        ),
      ],
    );
  }
}
