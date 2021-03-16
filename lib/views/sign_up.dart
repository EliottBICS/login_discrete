import'package:flutter/material.dart';
import 'package:login_discrete/views/sign_in.dart';
import 'package:login_discrete/widgets/widgets.dart';

//Essentially the same as Sign_In, but with a name to enter as well
//as the password and the mail

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();
  String name, email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.teal,
        elevation: 10,
        brightness: Brightness.light,
      ),
      //Form is an optional container for grouping multiple form fields
      //Here we use it to have the mail and password form fields grouped
      body: Form(
        //Container used for padding
        child: Container(
          //the padding will determine the space (in pixels) between the column
          //of widgets and the border of our screen
          padding: EdgeInsets.symmetric(horizontal: 25),
          //margin could be used as well, but everyting outside would not be
          // in the container, while with padding it would still be in
          // margin: EdgeInsets.symmetric(horizontal: 25),
          //The mail and password will be one above the other, so we put them
          // in a column widget
          child: Column(
            children: [
              //Spacer widget covers as much space as possible
              Spacer(),
              TextFormField(
                //the validator makes it so that if the value is empty, we display
                //an error message. Otherwise, we don't display anything.
                validator: (value) {
                  return value.isEmpty ? 'Please enter your name' : null;
                },
                decoration: InputDecoration(hintText: "Name"),
                //When the TextFormField is changed, the function onChanged is
                //called
                onChanged: (value) {
                  name = value;
                },
              ),
              //Sizedbox used to have some space between elements
              SizedBox(
                height: 14,
              ),
              TextFormField(
                //the validator makes it so that if the value is empty, we display
                //an error message. Otherwise, we don't display anything.
                validator: (value) {
                  return value.isEmpty ? 'Please enter an e mail' : null;
                },
                decoration: InputDecoration(hintText: "Email"),
                //When the TextFormField is changed, the function onChanged is
                //called
                onChanged: (value) {
                  email = value;
                },
              ),
              //Sizedbox used to have some space between elements
              SizedBox(
                height: 14,
              ),
              TextFormField(
                validator: (value) {
                  return value.isEmpty ? 'Please enter a password' : null;
                },
                decoration: InputDecoration(hintText: "Password"),
                onChanged: (value) {
                  password = value;
                },
              ),

              SizedBox(height: 80),
              //This widget is used to make the text clickable
              GestureDetector(
                onTap: (){

              },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  //sets the width to be equal to the width of the screen
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: Text('Sign in', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ", style: TextStyle(fontSize: 15)),
                  GestureDetector(
                    onTap: (){
                      //Navigates between the different screens of the app
                      //pushReplacement = leads to a new screen
                      //push = creates a new screen and puts it in front of the current
                      //one
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) => SignIn()
                      ));
                    },

                  child : Text("Sign in", style: TextStyle(fontSize: 15, decoration: TextDecoration.underline))
                  ),
                ],
              ),
              SizedBox(height: 15)
            ],
          ),
        ),
      ),
    );
  }
}
