import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/participant.dart';
import '../services/participant_service.dart';

class ParticipantsStateNotifier extends StateNotifier<List<Participant>> {
  final ParticipantService participantService;

  ParticipantsStateNotifier(this.participantService) : super([]);

  Future<void> fetchParticipants() async {
    try {
      final participants = await participantService.fetchParticipants();
      state = participants;
    } catch (e) {
      state = [];
      throw Exception('Failed to load participants');
    }
  }
}
