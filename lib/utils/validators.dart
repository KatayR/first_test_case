import 'package:form_field_validator/form_field_validator.dart';
import 'package:first_test_case/utils/constants.dart';

final emailValidator = MultiValidator([
  RequiredValidator(errorText: emailRequiredMessage),
  EmailValidator(errorText: validEmailMessage),
]);

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: passwordRequiredMessage),
  MinLengthValidator(8, errorText: minLengthError),
]);
