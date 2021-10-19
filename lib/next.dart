import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {

  Widget logInButton (String text, iconUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:4,horizontal:8),
      child: SizedBox(
        height: 50,
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            side: const BorderSide(),
          ),
          child: Stack(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset(iconUrl),
                      ),
                      SizedBox(width: 16,),
                      Text(
                        text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 64),
      decoration: BoxDecoration(
        color: Colors.white,
        //color: Color.fromRGBO(245, 235, 230, 1),
        borderRadius: BorderRadius.circular(12),
      ),
      height: 800,
      child: (
          Stack(children:<Widget>[
            Column(children:<Widget>[
              Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontSize: 20
                              )
                          )
                      ),
                    ],
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                      decoration: const InputDecoration(
                        labelText: "Email or Username form",
                        hintText: 'Email or Username',
                        border: OutlineInputBorder(),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: ""),
                    TextSpan(children: [
                    ]),
                    TextSpan(text: ""),
                  ]
                ),
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Colors.black,
                  ),
                  child: Text(
                      "Sign up", style: TextStyle(
                    color: Colors.white,
                  )
                  ),
                  onPressed:() {},
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  child: Text(
                    "Forget password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                  ),
                ),
              ),
              Spacer(),
              logInButton("Continue with apple", "assets/applelogo.png"),
              logInButton("Continue with facebook", "assets/facebooklogo.png"),
              logInButton("Continue with google", "assets/googlelogo.png"),
              Spacer(),
            ]
            )
          ],)
      ),
    );
  }
}
