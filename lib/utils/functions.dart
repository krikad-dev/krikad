

String extractNumbers(String input) {
  RegExp regExp = RegExp(r'[0-9]+');
  Iterable<Match> matches = regExp.allMatches(input);
  List<String> numbers = matches.map((match) => match.group(0)!).toList();
  return numbers.join();
}
