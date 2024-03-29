class Participant {
  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;
  Participant({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });
  factory Participant.fromJson(Map<String, dynamic> json) {
    return Participant(
      id: json['id'].toString(),
      email: json['email'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      avatar: json['avatar'],
    );
  }
}
