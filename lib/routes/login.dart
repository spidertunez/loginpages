import 'package:flutter/material.dart';

class login extends StatelessWidget {
  static const route = '/one';
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(  decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade200, Colors.green.shade200],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        ),
        title: Text(""),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade200, Colors.green.shade200],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Text(
                'login page',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('hi'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('flutter '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity, height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade100, Colors.green.shade200],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Container( padding: EdgeInsets.only(left: 20.0, right :20),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text("LOGIN", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 45 , color: Colors.green[100]),)
                    ,Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child:
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,

                          ),

                        ),
                      ),
                    ),
                    SizedBox(height: 40,),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child:
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(

                            borderSide: BorderSide.none,

                          ),

                        ),

                      ),
                    ),
                    SizedBox(height: 50,),
                    Row(
                      children: [

                        Text("Forget Password ?",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, color: Colors.green),
                        ),
                        SizedBox(width: 118,),
                        GestureDetector(
                          onTap: () {

                            Navigator.pushNamed(context, '/sec'); },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.blue.shade100, Colors.green.shade200],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "LOG IN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),

                        ),

                      ],
                    )
                  ],

                ),
              )

            ],
          )
      ),
    );
  }
}

