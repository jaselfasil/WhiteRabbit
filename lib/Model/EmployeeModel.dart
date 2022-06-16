import 'dart:convert';

List<EmployeeModel> listAllFilmRespFromJson(String str) =>
    List<EmployeeModel>.from(json.decode(str).map((x) => EmployeeModel.fromJson(x)));
class EmployeeModel {
  String name;
  String userName;
  String emailAddress;
  String imgUrl;
  String webSite;
  String phone;
  Address address;
  Company? companyDetails;

  EmployeeModel(
      {required this.name,
        required this.userName,
        required this.emailAddress,
        required this.imgUrl,
        required this.webSite,
        required this.phone,
        required this.address,
        required this.companyDetails
      });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => EmployeeModel(
        name: json["name"] ?? "",
        userName: json["username"] ?? "",
        emailAddress: json["email"] ?? "",
        imgUrl: json["profile_image"] ?? "",
        webSite: json["website"] ?? "",
        phone: json["phone"] ?? "",
        address: Address.fromJson(json["address"]),
        companyDetails: json['company'] != null ? Company.fromJson(json["company"]) : null,
      );
  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      "name":name,
      "username":userName,
      "email":emailAddress,
      "profile_image":imgUrl,
      "website":webSite,
      "phone":phone,
      "street":address.street,
      "suite":address.suite,
      "city":address.city,
      "zipcode":address.zipCode,
      "companyname": companyDetails != null ? companyDetails!.companyName:""
    };
    return map;
  }


}


class Address {
  String street;
  String suite;
  String city;
  String zipCode;

  Address({required this.street,required this.suite,required this.city,required this.zipCode});

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"] ?? "",
        suite: json["suite"] ?? "",
        city: json["city"] ?? "",
        zipCode: json["zipcode"] ?? "",
      );
}

class Company {
 String companyName;


 Company({required this.companyName});

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    companyName: json["name"] ?? ""
  );
}
class EmployeeDataModel{
 late String name;
 late String userName;
 late String emailAddress;
 late String imgUrl;
 late String webSite;
 late String phone;
 late String street;
 late String suite;
 late String city;
 late String zipCode;
 late String companyName;

  EmployeeDataModel(
      this.name,
      this.userName,
      this.emailAddress,
      this.imgUrl,
      this.webSite,
      this.phone,
      this.street,
      this.suite,
      this.city,
      this.zipCode,
      this.companyName);
 EmployeeDataModel.fromMap(Map<dynamic, dynamic> map)
  {
    name = map["name"] ?? "";
    userName = map["username"] ?? "";
    emailAddress = map["email"] ?? "";
    imgUrl = map["profile_image"] ?? "";
    webSite = map["website"] ?? "";
    phone = map["phone"] ?? "";
    street = map["street"] ?? "";
    city = map["city"] ?? "";
    suite = map["suite"] ?? "";
    zipCode = map["zipcode"] ?? "";
    companyName = map["companyname"] ?? "";
  }
}
