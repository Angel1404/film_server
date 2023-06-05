import 'package:mysql1/mysql1.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ConectionDb {
  static MySqlConnection? conn;

  static connection() async {
    try {
      var settings = ConnectionSettings(
        host: dotenv.get('HOSTDB'),
        port: int.parse(dotenv.get('PORTDB')),
        user: dotenv.get('USERDB'),
        db: dotenv.get('NAMEDB'),
      ); //Setting para la conexion
      conn = await MySqlConnection.connect(settings); //Conexion

      print('COnection DB : $conn');
    } catch (e) {
      print('ERRR: $e');
    }
  }
}
