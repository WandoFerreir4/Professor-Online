
import 'package:flutter/material.dart';

void main(){
  runApp(HomePage());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        
      },
    
  

      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
class LoginPage extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
      body: Padding(
  padding: EdgeInsets.all(16.0),
  
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,//alinha so elementos no centro
    crossAxisAlignment: CrossAxisAlignment.start,//estica,
    children: [
      
      TextField(
        controller: null,
        decoration: InputDecoration(labelText: "Altura(m)"),
      ),
      TextField(
        controller: null,
        decoration: InputDecoration(labelText: "Peso(kg)"),

      ),
      
      
    ],

  ),
  
  
),

    )
  );
  }
}

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(drawer: Drawer(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(leading: Icon(Icons.person),title: Text("Dados pessoais"),),
            ListTile(leading: Icon(Icons.timer),title: Text("Horários"),),
            ListTile(leading: Icon(Icons.calendar_month),title: Text("Calendário letivo"),),
            ListTile(leading: Icon(Icons.person),title: Text("Dados pessoais"),),
            ListTile(leading: Icon(Icons.person),title: Text("Dados pessoais"),),
            ListTile(leading: Icon(Icons.timer),title: Text("Horários"),),
            ListTile(leading: Icon(Icons.calendar_month),title: Text("Calendário letivo"),),
            ListTile(leading: Icon(Icons.person),title: Text("Dados pessoais"),),
            ListTile(leading: Icon(Icons.person),title: Text("Dados pessoais"),),
            ListTile(leading: Icon(Icons.timer),title: Text("Horários"),),
            ListTile(leading: Icon(Icons.calendar_month),title: Text("Calendário letivo"),),
            ListTile(leading: Icon(Icons.person),title: Text("Dados pessoais"),)
          
          ],

        )

      ),
      appBar: AppBar(title: Text("Professor online"),centerTitle: true, backgroundColor: Color.fromARGB(255, 0, 196, 75),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255), 
        child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Container(
      height: 100,
      
      color: Colors.blue,
    ),
    Container(
      height: 75,
      width: double.infinity,
      color: Color.fromARGB(255, 96, 216, 204),
      child:
      Text("Professor online SEDUC",style: TextStyle(color: Color.fromRGBO(29, 70, 64, 1),fontSize: 24),),alignment: Alignment.center,
       
    ),
    Container(
      height: 20,
      width: double.infinity,
      color: Color.fromARGB(255, 96, 216, 204),
      transformAlignment: FractionalOffset.topCenter,
      child:
      Text("O portal do professor da rede estadual!",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 16),),alignment: Alignment.center,
       
    ),
    Container(
      height: 25,
      width: double.infinity,
      color: Color.fromARGB(255, 0, 151, 136),
      child:
      Text("Bem vindo, professor!",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),alignment: Alignment.center,
    ),
  ],
))
      )


    );
  }

}
