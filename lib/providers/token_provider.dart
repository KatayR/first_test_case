import 'package:flutter_riverpod/flutter_riverpod.dart';

final tokenProvider = StateProvider<String?>((ref) => null);



/*
now I can use this provider in my app like this:

Consumer(
  builder: (context, ref, child) {
    final authController = ref.read(authControllerProvider);
    return YourWidget();
  },
);

*/