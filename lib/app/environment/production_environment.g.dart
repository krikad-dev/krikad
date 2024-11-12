// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_environment.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _ProductionEnvironment {
  static const List<int> _enviedkeybaseUrl = <int>[
    4083968545,
    1419236113,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    4083968518,
    1419236150,
  ];

  static final String baseUrl = String.fromCharCodes(List<int>.generate(
    _envieddatabaseUrl.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]));
}
