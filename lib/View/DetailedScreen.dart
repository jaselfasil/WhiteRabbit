import 'package:flutter/material.dart';

import '../Model/EmployeeModel.dart';
import '../Utils/Constants.dart';

class DetailedScreen extends StatefulWidget {
  EmployeeDataModel _employeeData;

  DetailedScreen(this._employeeData);

  @override
  _DetailedScreenState createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final salesInvoiceTextStyle = TextStyle(
        fontSize: width * 0.036,
        letterSpacing: 1.5,
        fontWeight: FontWeight.w500,
        color: Colors.black);

    return Scaffold(
      appBar: appBar("Profile"),
      body: ListView(
        children: [
          SizedBox(
            height: height * 0.35,
            child: widget._employeeData.imgUrl.isEmpty
                ? Image.asset("assets/images/u_image.jpg")
                : Image.network(
                    widget._employeeData.imgUrl,
                    fit: BoxFit.fill,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Name",
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    ),
                    Text(
                      ":",
                      style: salesInvoiceTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.038,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        widget._employeeData.name,
                        textAlign: TextAlign.start,
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "User Name",
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    ),
                    Text(
                      ":",
                      style: salesInvoiceTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.038,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        widget._employeeData.userName,
                        textAlign: TextAlign.start,
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Email",
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    ),
                    Text(
                      ":",
                      style: salesInvoiceTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.038,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        widget._employeeData.emailAddress,
                        textAlign: TextAlign.start,
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Address",
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    ),
                    Text(
                      ":",
                      style: salesInvoiceTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.038,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "${widget._employeeData.street},${widget._employeeData.suite},${widget._employeeData.city},${widget._employeeData.zipCode}",
                        textAlign: TextAlign.start,
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Phone",
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    ),
                    Text(
                      ":",
                      style: salesInvoiceTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.038,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        widget._employeeData.phone.isEmpty
                            ? "+917306148136"
                            : widget._employeeData.phone,
                        textAlign: TextAlign.start,
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Website",
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    ),
                    Text(
                      ":",
                      style: salesInvoiceTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.038,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        widget._employeeData.webSite.isEmpty ? "lanwaresolutions.com": widget._employeeData.webSite,
                        textAlign: TextAlign.start,
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    )
                  ],
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Company",
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    ),
                    Text(
                      ":",
                      style: salesInvoiceTextStyle.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: width * 0.038,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        widget._employeeData.companyName.isEmpty ? "White Rabbit":widget._employeeData.companyName,
                        textAlign: TextAlign.start,
                        style: salesInvoiceTextStyle.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: width * 0.038,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
