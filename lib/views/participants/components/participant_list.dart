// participant_list.dart
import 'package:flutter/material.dart';
import 'package:first_test_case/models/participant.dart';
import 'participant_tile.dart';

class ParticipantList extends StatelessWidget {
  final List<Participant> participants;

  const ParticipantList({Key? key, required this.participants})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: participants.length,
      itemBuilder: (context, index) {
        final participant = participants[index];
        return ParticipantTile(participant: participant);
      },
    );
  }
}
