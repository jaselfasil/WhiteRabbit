import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../DbHelper/DbHelper.dart';
import '../Key.dart';
import '../Model/EmployeeModel.dart';
import '../Utils/Constants.dart';
import '../http.dart';

class HomeViewModel with ChangeNotifier {
  var http = Http.instance;
  bool _loading = false;

  bool get loading => _loading;

  late List<EmployeeModel> employeeResp;
  late SharedPreferences _pref;
  List<EmployeeDataModel> user = [];
  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  var dbHelper = DbHelper();

  getInfo() async {
    _pref = await SharedPreferences.getInstance();

    if (_pref.getString(MyKey.fetched) != "1") {
      sentRequestGetEmployees().then((value) {
        userData("");
        // notifyListeners();
      });
    } else {
      userData("");
    }
  }

  HomeViewModel() {
    getInfo();
  }



  userData(String search) async {
    user = await dbHelper.getUserData(search);
    setLoading(false);
    notifyListeners();
  }

  Future<dynamic> sentRequestGetEmployees() async {
    setLoading(true);
    try {
      employeeResp =
          listAllFilmRespFromJson(await http.getRequest(employeeUrl));
      _pref = await SharedPreferences.getInstance();
      _pref.setString(MyKey.fetched, "1");
      employeeResp.forEach((element) {
        DbHelper().saveData(element);
      });

      setLoading(false);
    } catch (e) {
      print(e);
    }
  }
}
