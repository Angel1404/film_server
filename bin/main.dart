import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../Lib/films_server.dart';

void main(List<String> args) async {
  await DotEnv().load();
  await FilmsServer.initServer();
}
