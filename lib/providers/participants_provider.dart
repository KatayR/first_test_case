import 'package:first_test_case/models/participant.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/participant_service.dart';
import 'participants_state_notifier.dart';

final participantServiceProvider = Provider<ParticipantService>((ref) {
  return ParticipantService();
});

final participantsProvider =
    StateNotifierProvider<ParticipantsStateNotifier, List<Participant>>((ref) {
  return ParticipantsStateNotifier(ref.read(participantServiceProvider));
});
