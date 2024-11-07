import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/CustomWidget/MyCustomWidget.dart';
import 'package:untitled3/Provider/UserProvider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Random Users",style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.brown,
      ),
      body: Consumer<UserProviser>(
        builder: (context, provider, child) {
          final UserData = provider.usermodel;

          if (UserData == null) {
            provider.Fech();
            return const Center(
                child: CircularProgressIndicator());
          }else {
            return ListView.separated(
              itemBuilder: (context, index) {
                final Name = UserData.List1[index]["FulName"];
                final email = UserData.List1[index]["Email"];
                final image = UserData.List1[index]["Images"];

                return Custom(
                  FullName: Name.elementAt(index),
                  Email: email.elementAt(index),
                  Picture: image.elementAt(index),

                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: UserData.List1.length,
            );
          }
        },
      ),
    );
  }
}
