import 'package:flutter_starter/app/environment/development_environment.dart';
import 'package:flutter_starter/app/view/app.dart';
import 'package:flutter_starter/bootstrap.dart';

Future<void> main() async {
  await bootstrap(builder: App.new, environment: DevelopmentEnvironment());
}
