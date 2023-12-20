import 'package:flutter/material.dart';

class UserModel with ChangeNotifier{
  int? id;
  String? number;
  String? name;
  int? status;

  UserModel({
    this.id,
    this.number,
    this.name,this.status
});
}