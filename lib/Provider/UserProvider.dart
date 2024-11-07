import 'package:flutter/cupertino.dart';
import 'package:untitled3/Model/UserModel.dart';
import 'package:untitled3/Services/UserServices.dart';

class UserProviser extends ChangeNotifier
{
  UserModel? usermodel;
  Future<void> Fech() async
  {
    usermodel = await UserServices.GetData();
    notifyListeners();
  }
}