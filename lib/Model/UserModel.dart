class UserModel
{
  List<dynamic> List1;
  UserModel({required this.List1});

  factory UserModel.FromJson(Map<String,dynamic> json)
  {
    List<dynamic> Data;
    Data = json["results"].map(
          (User) {
        return
          {
            "FulName": User["name"]["first"] + User["name"]["last"],
            "Email": User["email"],
            "Images": User["picture"]["thumbnail"],

          };
      },
    ).ToList();
    return UserModel(List1: Data);
  }
}