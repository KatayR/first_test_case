// participants_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:first_test_case/views/participants/components/participant_list.dart';
import '../../providers/participants_provider.dart';

class ParticipantsScreen extends ConsumerWidget {
  static const String routeName = '/participants';

  const ParticipantsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(participantsProvider);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Participants'),
      ),
      body: asyncValue.when(
        data: (participants) => ParticipantList(participants: participants),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Text('Error: $error'),
      ),
    );
  }
}
