import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:first_test_case/views/participants/components/participant_list.dart';
import '../../providers/participants_provider.dart';
import 'package:first_test_case/utils/constants.dart';

class ParticipantsScreen extends ConsumerWidget {
  static const String routeName = '/participants';

  const ParticipantsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final participants = ref.watch(participantsProvider);

    if (participants.isEmpty) {
      ref.read(participantsProvider.notifier).fetchParticipants();
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(participantsTitle),
      ),
      body: participants.isNotEmpty
          ? ParticipantList(participants: participants)
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
