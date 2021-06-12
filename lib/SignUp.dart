import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _from=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(title: Text("LoginPage"),centerTitle: true,),
      body: SingleChildScrollView(
        child: Center(

          child:Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network("https://t3.ftcdn.net/jpg/01/22/71/96/240_F_122719641_V0yw2cAOrfxsON3HeWi2Sf4iVxhv27QO.jpg",),
              Form(
                key: _from,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("SignUp",style: TextStyle(fontSize:40,color: Colors.green,fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        TextFormField(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          validator: (value){
                            if(value==null && value.isEmpty)
                            {
                              return 'Please Enter Username';
                            }
                            else return null;
                          },
                          decoration: InputDecoration(
                            labelText: "UserName",
                            border:OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          obscureText: true,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          decoration: InputDecoration(

                            labelText: "Password",
                            border:OutlineInputBorder(),
                          ),
                          validator: (value){
                            if(value==null && value.isEmpty)
                            {
                              return 'Please Enter Password';
                            }
                            else return null;
                          },
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          obscureText: true,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          decoration: InputDecoration(

                            labelText: "Enter mobile Number",
                            border:OutlineInputBorder(),
                          ),
                          validator: (value){
                            if(value==null && value.isEmpty)
                            {
                              return 'Please Enter Mobile';
                            }
                            else return null;
                          },
                        ),
                        SizedBox(height: 15,),
                        ElevatedButton(
                            onPressed: (){
                              if((_from.currentState.validate())){
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(content: Text('Processing Data')));

                              }
                            },
                            child:Text("Register")
                        ),
                        SizedBox(height: 10,),
                        ElevatedButton(
                            onPressed: (){
                            },
                            child:Text("Already Have Account !")
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

        ),
      ),

    );
  }
}
