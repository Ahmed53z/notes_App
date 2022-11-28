import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tranning/model/note_model.dart';

class DatabaseP {
   Database? _db;
  Future<Database?> get db async {
    if (_db == null) {
      _db = await intialDb();
      return _db;
    } else {
      return _db;
    }
  }

  intialDb() async {
    String databasepath = await getDatabasesPath();
    String path = join("note_app.db");
    Database mydb = await openDatabase(path, onCreate: _onCreate, version: 1, onUpgrade: _onUpgrade);
    return mydb;
  }
  _onUpgrade(Database db, int oldVersion, int newVersion) {
  }

  _onCreate(Database db, int) async {
    await db.execute('''
CREATE TABLE "notes" (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
"title" TEXT NOT NULL,
 "body" TEXT NOT NULL,
 "creation_date" DATE)
''');
  }

   readData(String sql) async {
    Database? mydb = await db;
    List<Map> response = await mydb!.rawQuery(sql);
    return response;

  }
     insertData(String sql) async {
    Database? mydb = await db;
   int response = await mydb!.rawInsert(sql);
    return response;

  }
     updateData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawUpdate(sql);
    return response;

  }
     deleteData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawDelete(sql);
    return response;

  }


}

