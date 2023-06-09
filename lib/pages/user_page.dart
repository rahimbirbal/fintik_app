import 'package:fintek_app/models/user_model.dart';
import 'package:fintek_app/services/user_services.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<UserPage> {
  late Future<UserModel> dataDariApi;

  @override
  void initState() {
    super.initState();

    dataDariApi = UserService().fetchDataUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: dataDariApi,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData) {
              // Data fetched successfully, display your data here
              return Column(
                children: <Widget>[
                  Text(snapshot.data!.data.firstName),
                  Text(snapshot.data!.data.email)
                ],
              );
            } else if (snapshot.hasError) {
              // If something went wrong
              return Center(child: Text(snapshot.error.toString()));
            }
          
            // While fetching, show a loading spinner.
            return Center(child: CircularProgressIndicator());
          }
        ),
      ),
    );
  }
}