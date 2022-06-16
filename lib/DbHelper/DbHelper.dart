import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;

import '../Model/EmployeeModel.dart';



class DbHelper{
  static Database? _db;

  static const DB_Name = "employee.db";
  static const String Table_Employee = "employee";
  static const int Version = 1;

  static const String E_UserID = 'user_id';
  static const String E_Name = 'name';
  static const String E_UserName = 'username';
  static const String E_Email = 'email';
  static const String E_ProfileImage = 'profile_image';
  static const String E_Phone = 'phone';
  static const String E_Website = 'website';
  static const String E_Street = 'street';
  static const String E_Suite = 'suite';
  static const String E_City = 'city';
  static const String E_ZipCode = 'zipcode';
  static const String E_CompanyName = 'companyname';

  Future<Database?> get db async {
    // ignore: unnecessary_null_comparison
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }
  _onCreate(Database db, int intVersion) async {
    await db.execute("CREATE TABLE $Table_Employee ("
        " $E_UserID INTEGER PRIMARY KEY AUTOINCREMENT, "
        " $E_Name TEXT, "
        " $E_UserName TEXT,"
        " $E_Email TEXT, "
        " $E_ProfileImage TEXT,"
        " $E_Phone TEXT,"
        " $E_Website TEXT,"
        " $E_Street TEXT,"
        " $E_Suite TEXT,"
        " $E_City TEXT,"
        " $E_ZipCode TEXT,"
        " $E_CompanyName TEXT"
        ")");

  }
  Future<int> saveData(EmployeeModel employeeModel) async {
    var dbClient = await db;
    var res = await dbClient!.insert(Table_Employee, employeeModel.toMap());
    print("inserted ${res}");
    return res;
  }
  Future<List<EmployeeDataModel>> getUserData(String searchElement) async {
    List<EmployeeDataModel> employeeList = [];
    var dbClient = await db;
    List<Map> res = await dbClient!.query(DbHelper.Table_Employee,where: "name LIKE'%$searchElement%'");
    res.forEach((row) {
      employeeList.add(EmployeeDataModel.fromMap(row));
      print("row element${row}");
    });
    print("count of ${employeeList.length}");
    if(employeeList.length > 0){
      return employeeList;
    }
    else{
      return [];
    }
  }
}