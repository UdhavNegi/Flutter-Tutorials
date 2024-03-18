import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Shared Preferences'),
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

  var nameController = TextEditingController();

  static const String KEYNAME  = "name";
  var nameValue = "No Value Saved";

  @override
  void initState()
  {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 300,
          child : Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Name",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color : Colors.black, 
                      width : 2, 
                      
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color : Colors.blue, 
                      width : 2
                    )
                  )
                ),
              ), 

              SizedBox(
                height: 11,
              ), 

              ElevatedButton(onPressed: ()async {

                var name = nameController.text.toString();

                var prefs = await SharedPreferences.getInstance();
                prefs.setString(KEYNAME, name);
        
              }, child: Text('Save')), 

              SizedBox(
                height: 11,
              ),

              Text(nameValue, style : TextStyle(color : Colors.grey, fontWeight: FontWeight.bold))

            ],
          )
        ),
      )
    );
  }
  
  void getValue() async{
    var prefs = await SharedPreferences.getInstance();

    var getName = prefs.getString(KEYNAME);

    nameValue = getName ?? "No Value Saved";
    setState(() {
      
    });
  }
}
 