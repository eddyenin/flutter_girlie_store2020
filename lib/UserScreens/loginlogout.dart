import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_girlie_store/UserScreens/myHomePage.dart';

class LoginLogout extends StatefulWidget {
  @override
  _LoginLogoutState createState() => _LoginLogoutState();
}

class _LoginLogoutState extends State<LoginLogout> {
  @override
  String _email, _password;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),

      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              // validator: ,
              onSaved:(input) => _email = input ,
              decoration:InputDecoration(
                labelText: "Email",
              ),
              
              ),
                TextFormField(
              // validator: ,
              onSaved:(input) => _password = input ,
              decoration:InputDecoration(
                labelText: "Password",
              ),
              obscureText: true,
              ),
              RaisedButton(
                onPressed: (){
                  signIn();
                },
                child: Text('Login'),
                ),
          ],
        ),
        ),
    );
  }

  Future<void> signIn() async {
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        AuthResult user =  await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
      }catch(e){
        print(e.message);
      }
      
    }
  }
}
