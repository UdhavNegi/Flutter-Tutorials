import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget{
  var nameFromHome;
  ProfileScreen(this.nameFromHome);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('My Profile'),
        backgroundColor: Colors.blue,
      ), 
      body : Container(
        color : Colors.blueGrey.shade200,
        child : Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome, $nameFromHome", style : TextStyle(fontSize: 34, color : Colors.white)),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                style : ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
              
                child : Text('Back')
              ),
            ],
          ),
        ),
      )
    );
  }

}