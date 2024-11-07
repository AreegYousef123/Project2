import 'package:dio/dio.dart';
import 'package:untitled3/Model/UserModel.dart';

class UserServices
{
  static Dio dio = Dio();
  static Future<UserModel>GetData()async
  {
     try
     {
       const URL = "https://randomuser.me/api/?results=50";
       Response response = await dio.get(URL);
       if(response.statusCode == 200)
         {
           return UserModel.FromJson(response.data);
         }
       else
         {
            throw Exception("Not Found");
         }
     }
     catch(e)
    {
      throw Exception("Not Found");
    }
  }

}