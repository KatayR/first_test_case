// participant_tile.dart
import 'package:flutter/material.dart';
import 'package:first_test_case/models/participant.dart';

class ParticipantTile extends StatelessWidget {
  final Participant participant;

  const ParticipantTile({Key? key, required this.participant})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${participant.firstName} ${participant.lastName}'),
      subtitle: Text(participant.email),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(participant.avatar),
      ),
    );
  }
}
