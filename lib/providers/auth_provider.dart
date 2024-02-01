import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:first_test_case/controllers/auth_controller.dart';
import 'package:first_test_case/services/auth_service.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());

final authControllerProvider = Provider<AuthController>(
    (ref) => AuthController(ref.read(authServiceProvider), ref));
