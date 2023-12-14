import "package:flutter/foundation.dart";
import "package:sqflite/sqflite.dart";
import "package:path/path.dart";
import "package:path_provider/path_provider.dart";

class DatabaseConnection {
  Future<Database> setDatabase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, 'db_crud');
    debugPrint(path);
    var database = await openDatabase(path, version: 1, onCreate: _createDatabase);
    return database;
  }

  Future<void> _createDatabase(Database database, int version) async {
    String sql = "CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, contact TEXT, address TEXT, description TEXT);";
    await database.execute(sql);
  }
}
