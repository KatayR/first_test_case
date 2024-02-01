import '../models/participant.dart';
import '../services/participant_service.dart';

class ParticipantsController {
  final ParticipantService participantService;

  ParticipantsController(this.participantService);

  Future<List<Participant>> fetchParticipants() async {
    return participantService.fetchParticipants();
  }
}
