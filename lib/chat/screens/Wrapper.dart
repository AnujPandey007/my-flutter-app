import 'package:flutter/material.dart';
import 'package:hello_world/chat/screens/authenticate/Authenticate.dart';
import 'package:hello_world/chat/screens/home/Home.dart';
import 'package:provider/provider.dart';
import 'package:hello_world/chat/models/user.dart';
import 'package:hello_world/chat/services/auth.dart';

class Myapp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper()
      ),
    );
  }
}


class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    //return either authenticate or home widget
    
    if (user==null){
      return Authenticate();
    }
    else{
      return Home();
    }
  }
}



