import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/participant.dart';
import 'package:first_test_case/utils/constants.dart';

class ParticipantService {
  Future<List<Participant>> fetchParticipants() async {
    final response = await http.get(Uri.parse(usersEndpoint));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body)['data'];
      List<Participant> participants =
          body.map((dynamic item) => Participant.fromJson(item)).toList();
      return participants;
    } else {
      throw Exception('Failed to load participants');
    }
  }
}
