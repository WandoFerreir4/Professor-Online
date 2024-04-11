import 'package:flutter/material.dart';
import 'package:aplication/segundatela.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        "/2":(context) => Mainpage()
      },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Professor Online',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
  
      
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color.fromARGB(255, 0, 151, 136), Color.fromARGB(255, 38, 119, 108)]
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/proficon.jpg',
                    width: 100,
                    height: 100,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 32),
                      children: [
                        TextSpan(
                          text: 'Professor ',
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: 'Online',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'O portal do professor da rede estadual',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'CPF',
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.lock), 
                        suffixIcon: IconButton( 
                          icon: Icon(Icons.visibility),
                          onPressed: () {},
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(1, 131, 125, 1)),
                      ),
                      child: Text(
                        'ENTRAR',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/2');
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        child: Text(
                          'Primeiro acesso',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                      TextButton(
                        child: Text(
                          'Recuperar senha',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
