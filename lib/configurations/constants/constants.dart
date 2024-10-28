// Global APP - specific constants

import 'package:reactive_forms/reactive_forms.dart';
import 'package:flutter_starter/configurations/constants/fonts.gen.dart';

///Generate by running ```fluttergen``` in the terminal
export 'assets.gen.dart'; //Uncomment if assets are needed
export 'fonts.gen.dart';

const appName = 'Tatpar ACF';
const kFontFamily = FontFamily.montserrat;

const nikshaySetuLink =
    'https://play.google.com/store/apps/details?id=com.iiphg.tbapp';

const loginLink =
    'https://sso.nikshay.in/v1/sso/login?returnUrl=https://www.nikshay.in/Home&clientId=29';
const registerLink = 'https://www.nikshay.in/Home/UserFacility';

final workingStatusList = [
  'Referral',
  'TB Screening',
  'Mental Health Screening',
  'Diagnosis',
  'Treatment',
  'Outcome',
  'Contact Tracing',
];

const caseOutcomeList = [
  'Treatment Done',
  'Still Under Treatment',
  'Cured',
  'Relapse',
  'Transferred Out',
  'Lost to Follow-up',
  'Died',
  'Not Assessed',
  'Other',
];

const udstOptions = [
  'MTb Detected. RIF Sensitive',
  'MTb Detected. RIF Resistant',
  'MTb Detected. RIF Intermediate',
  'MTb Not Detected',
];

Map<String, ValidationMessageFunction> reactiveFormValidators(
        {String? label = 'Field', int? maxLength}) =>
    {
      ValidationMessage.required: (error) => 'The $label must not be empty',
      ValidationMessage.minLength: (error) =>
          'The $label must be at least ${maxLength ?? (error as Map)['requiredLength']} digits',
      ValidationMessage.maxLength: (error) =>
          'The $label must be above ${maxLength ?? (error as Map)['requiredLength']} digits',
      ValidationMessage.min: (error) =>
          'The $label must be at least ${(error as Map)['min']}',
      ValidationMessage.max: (error) =>
          'The $label must be below ${(error as Map)['max']}'
    };
