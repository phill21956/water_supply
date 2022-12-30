import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Great for storing simple state objects that can change, such as a counter value:
final counterProvider = StateProvider<int>((ref) {
  return 0;
});

///Great for accessing dependencies and objects that don’t change.
final provProvider = Provider<dynamic>((ref) {
  return;
});

///Best for making API calls
final futureProvider = FutureProvider<dynamic>((ref) async {
  return;
});

///ideal for managing state that may change in reaction to an event or user interaction.
class Notifier extends StateNotifier<dynamic> {
  Notifier() : super("");
}

final notifierProvider = StateNotifierProvider<Notifier, dynamic>((ref) {
  return Notifier();
});

/// to watch a Stream of results from a realtime API and reactively rebuild the UI.
final streamProvider = StreamProvider<dynamic>((ref) async* {
  return ;
});