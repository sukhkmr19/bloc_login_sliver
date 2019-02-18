import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login_screen.dart';

import 'blocs/provider.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Log Me In!',
        home: Scaffold(
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                pinned: true,
                floating: false,
                centerTitle: false,
                automaticallyImplyLeading: true,
                leading: CircleAvatar(
                  radius: 10.0,
                  child: Image.network(
                    'https://www.gravatar.com/avatar/d4f909e9619c6295cc268fe7ae3a2255?s=420',
                    fit: BoxFit.cover,
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Login Page'),
                  background: Image.network(
                    'https://images.pexels.com/photos/248797/pexels-photo-248797'
                        '.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverFillRemaining(
                child: LoginScreen(),
              )
            ],
          ),
//          body: LoginScreen(),
        ),
      ),
    );
  }
}
