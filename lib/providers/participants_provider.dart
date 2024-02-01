import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controllers/participants_controller.dart';
import '../services/participant_service.dart';

final participantServiceProvider = Provider<ParticipantService>((ref) {
  return ParticipantService();
});

final participantsControllerProvider = Provider<ParticipantsController>((ref) {
  return ParticipantsController(ref.read(participantServiceProvider));
});

final participantsProvider = FutureProvider((ref) async {
  return ref.read(participantsControllerProvider).fetchParticipants();
});
