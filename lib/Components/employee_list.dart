
import 'package:flutter/material.dart';

import '../Model/EmployeeModel.dart';
import '../Utils/Constants.dart';
import '../View/DetailedScreen.dart';

class EmployeeListRow extends StatelessWidget {
  final EmployeeDataModel employeeDataModel;

  EmployeeListRow({required this.employeeDataModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailedScreen(employeeDataModel)));
      },
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Row(
              children: [
                ClipRRect(
                    borderRadius:
                    BorderRadius.circular(25.0),
                    child: employeeDataModel.imgUrl.isEmpty
                        ? Image.asset(
                      "assets/images/u_image.jpg",
                      width: 40,
                      height: 40,
                    )
                        : Image.network(
                      employeeDataModel.imgUrl,
                      width: 40,
                      height: 40,
                    )),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      employeeDataModel.name,
                      style: contentStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      employeeDataModel.companyName.isEmpty
                          ? "White Rabbit"
                          : employeeDataModel.companyName,
                      style: contentStyle,
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            thickness: 1,
          )
        ],
      ),
    );
  }
}
