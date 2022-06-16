import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Components/ScreenLoading.dart';
import '../Components/employee_list.dart';
import '../Utils/Constants.dart';
import '../Key.dart';
import '../ViewModel/HomeViewModel.dart';
import 'DetailedScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _searchProductsController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    HomeViewModel homeViewModel = context.watch<HomeViewModel>();
    return Scaffold(
      key: _scaffoldKey,
      appBar: appBar("Home"),
      body: homeViewModel.loading
          ? Center(
              child: AppLoading(),
            )
          : ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: textFeild_height,
                      width: width * 0.8,
                      child: TextField(
                        textInputAction: TextInputAction.search,
                        onSubmitted: (value) {
                          // userData(value);
                          homeViewModel.userData(value);
                        },
                        autofocus: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Search',
                        ),
                        controller: _searchProductsController,
                        onChanged: (String value) {
                          homeViewModel.userData(value);
                        },
                      )),
                ),
                homeViewModel.user.length == 0
                    ? SizedBox(
                        height: height * 3 / 4,
                        child: Center(child: Text("No Data")))
                    : ListView.builder(
                        itemCount: homeViewModel.user.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          var item = homeViewModel.user[index];
                          return EmployeeListRow(
                            employeeDataModel: item,
                          );
                        })
              ],
            ),
    );
  }

}
