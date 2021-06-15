



import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class SecondRoute extends StatelessWidget {
  final String text;
      SecondRoute({Key key, @required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(text+" Thanks for submitting",
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height:100),
            ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!')),
            ],
        ),
        
       
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'task2'),
      debugShowCheckedModeBanner: false,
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
  String title="task2";
  TextEditingController name = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        title: Text(title),
        actions: [

         InkWell(
           child:Icon(Icons.account_circle),
           onTap:(){
             setState(() {
               title="hello";
             });
           },
         ),
          
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
        children:<Widget> [
            DrawerHeader(
            decoration: BoxDecoration(
          color: Colors.redAccent,
          
            
          ),
           child: Text("Hello"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.audiotrack),
            title: Text("Tracks"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("Account"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          
        ],  
        ),
        
      ),
      body: Center(
      
          child: Column(
              
          mainAxisAlignment: MainAxisAlignment.center,
          
       
          children: [
            Row(
              children:  [

                Image.asset('assets/farshad.jpg',width:200,height: 300),
                Image.network('https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',width:200,height: 300),
               
              ],
              
            ),
            Text("Hello,Welcome",style:TextStyle(fontSize: 20)),
            SizedBox(height:10),
            
            Row(
              children: [
                SizedBox(
                  width: 120,
                ),
                Icon(Icons.favorite,size: 50,),
                Icon(Icons.audiotrack,size: 50,),
                Icon(Icons.account_box,size: 50,),
                
              ],
            
            ),
           
           Padding(padding: EdgeInsets.symmetric(vertical:20,horizontal: 20),
           child: TextFormField(
              controller: name,
             decoration: InputDecoration(
               border : UnderlineInputBorder(),
               labelText: 'Enter Name'
               
               ),
              

           ),
           ),
           
           ElevatedButton(onPressed:(){
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute( text:name.text.toString())),
            );

           }, 
           child: const Text('Submit')),
          ],
        
         
        ),
        
        
      ),
      
    );
  }

}
