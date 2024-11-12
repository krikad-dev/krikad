// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_environment.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _ProductionEnvironment {
  static const List<int> _enviedkeybaseUrl = <int>[
    3973190164,
    3948487883,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    3973190195,
    3948487916,
  ];

  static final String baseUrl = String.fromCharCodes(List<int>.generate(
    _envieddatabaseUrl.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]));
}
