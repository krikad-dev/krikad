// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_environment.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _ProductionEnvironment {
  static const List<int> _enviedkeybaseUrl = <int>[
    49191629,
    1019946912,
  ];

  static const List<int> _envieddatabaseUrl = <int>[
    49191658,
    1019946887,
  ];

  static final String baseUrl = String.fromCharCodes(List<int>.generate(
    _envieddatabaseUrl.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatabaseUrl[i] ^ _enviedkeybaseUrl[i]));
}
