import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teirei624/next.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override



  _onTapItem(){}

  Widget usualButtonView(String text, color, textColor){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: _onTapItem(),
          child: Container(
            height: 50,
            child: Center(
              child: Text(text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 70,
                        horizontal: 15,
                      ),
                      child: Text(
                        'Continue as guest',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Text('Etsy',style:TextStyle(fontSize:50, color:Colors.green, fontStyle: FontStyle.italic)),
                Image.asset('assets/people.jpg'),
                Expanded(child: Container()),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                    child: Text("Welcome to the world's most\nimaginative marketplace",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20,),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:4,horizontal:8),
                        child: SizedBox(
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
                            onPressed:() {
                              showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (context) => NextPage()
                              );
                            },
                          ),
                        )
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      print('Tapped I already have an account' );
                    },
                    child: Text(
                      "I already have an account",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container())
              ],
            ),
            ),
          ],
        )
    );
  }
}
