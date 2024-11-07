import 'package:flutter/material.dart';
class Custom extends StatelessWidget {
  const Custom({super.key, required this.FullName , required this.Email,required this.Picture});
  final String FullName;
  final String Email ;
  final String Picture;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(FullName),
          Text(Email),
          Image.network(Picture),
        ],
      ),
      )
    );
  }
}












/*import 'package:flutter/material.dart';
class Prayercard extends StatelessWidget {
   Prayercard({super.key,required this.Name , required this.Time});

  final String Name;
  final String Time;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      shadowColor: Colors.black,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 100,),
          Padding(padding: EdgeInsets.all(20),
          child:
          Text(Name,style: TextStyle(fontSize: 17),),
          ),
          Spacer(),
          Padding(padding: EdgeInsets.all(20),
            child:
           Text(Time,style: TextStyle(fontSize: 12),),
          ),
        ],
      ),
    );
  }
}
*/