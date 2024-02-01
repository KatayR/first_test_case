import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/participant.dart';

class ParticipantService {
  Future<List<Participant>> fetchParticipants() async {
    final response = await http.get(Uri.parse('https://reqres.in/api/users'));
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
