import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/loginPage.dart';
import 'package:myapp/pratice.dart';


// import 'login.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),

        useMaterial3: true,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 22,fontFamily: 'Karla'),
          subtitle1: TextStyle(color: Colors.green,fontWeight: FontWeight.w400),
        )
      ),
      home: loginPage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
      var arr_name =["Subhransu","Badal","Krushna","Shakti","Biswojit","Jitesh","Sarathi","Chandan","Ajit"];
      var arr_sub = ["Student","Gamer","Employee","Businessman","Politician"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Chat App"),
      ),
       body:ListView.separated(itemBuilder: (context,index){
         return Card(

           elevation: 5,
           shadowColor: Colors.purple,
           child: InkWell(
             onTap: (){
               Navigator.push(
                   context, MaterialPageRoute(
                   builder: (context)=>
                   pratice(),
               ),
               );
             },
             child: ListTile(

               leading: CircleAvatar(
                 radius: 22,
                 backgroundColor: Colors.black,
                 child: CircleAvatar(
                   backgroundImage: AssetImage("assets/images/boy_avatar.jpg"),
                   radius: 20,
                   backgroundColor: Colors.green,
                 ),
               ),
               title: Text(arr_name[index],style: Theme.of(context).textTheme.headline1),
               subtitle: Text("Active",style: Theme.of(context).textTheme.subtitle1,),
               trailing: IconButton(
                 onPressed: (){

                 },
                 icon: Icon(Icons.message_rounded),),
             ),
           ),
         );
       },
         separatorBuilder: (context,index){
         return Divider(height: 10,thickness: 0,color: Colors.white,);
         },
         itemCount: arr_name.length,

       )

    );
  }
}
