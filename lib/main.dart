//container
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


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
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

//padding:
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("lab experiment 3", style: TextStyle(color: Colors.yellow),),
        ),
      body: Center
      (
        child: Container(

      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(40.0),
      decoration: BoxDecoration(  
            border: Border.all(color: Colors.white, width: 2),  
            borderRadius: BorderRadius.circular(8),  
            boxShadow: [  
              new BoxShadow(color: Colors.deepPurple, offset: new Offset(6.0, 6.0),),  
            ],  ),
      child: Text(
        'Hello World!' ,
        style: TextStyle(
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.italic
        )
         ),
        ),
         
      ),
      )
    
    );
  }
}

//sized box
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("lab experiment 3", style: TextStyle(color: Colors.yellow),),
        ),
      body: Center
      (
        child: SizedBox(
          width: 300.0,
          height: 450.0,
          child: Card(
            color: Colors.red,
            child: Center(
              child:Text(
                'Sized box demo',
                style: TextStyle(color: Colors.white,
                fontSize: 24),)
            )
           ),
           )        
      ),
      )    
    );
  }
}

//aspect ratio
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("lab experiment 3", style: TextStyle(color: Colors.yellow),),
        ),
      body: Center
      (
        child: AspectRatio(
          aspectRatio: 1/1,
          child: Container(
            margin:EdgeInsets.all(20),
            color: Colors.blue,
          ),
          )
      ),
      )    
    );
  }

//baseline
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("lab experiment 3", style: TextStyle(color: Colors.yellow),),
        ),
      body: Baseline(
            baseline: 5,
            baselineType: TextBaseline.alphabetic,
            child: Container(
            height: 160,
            width: 150,
            color: Colors.blue,
            child: Text('This is Baseline demo',
            style: TextStyle(fontSize: 24)),
            ),
            )  
      )    
    );
  }

//constraintBox
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("lab experiment 3", style: TextStyle(color: Colors.yellow),),
        ),
      body: Center(
        child:ConstrainedBox(  
              constraints: BoxConstraints(  
              minHeight:150.0,  
              minWidth: 150.0,  
              maxHeight:300.0,  
              maxWidth: 300.0,  
            ),  
              child:Container(
                height: 1400,
                decoration: BoxDecoration(
                  color: Colors.red,
                  ),
           ), 
          )       
          ),    
      )    
    );
  }
}

//fitted box
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("lab experiment 3", style: TextStyle(color: Colors.yellow),),
        ),
      body: Center(  
        child: FittedBox(child: Row(  
          children: <Widget>[  
            Container(  
              child: Text("This is widget 1",
              style: TextStyle(fontSize: 24),),  
              ),  
            Container(  
              child: Text("This is widget 2",
              style: TextStyle(fontSize: 24),),  
            ),
            Container(  
              child: Text("This is widget 3",
              style: TextStyle(fontSize: 24),),  
            )

            ],  
          ),  
          fit: BoxFit.contain,  
        )  
      ),  
    ));  
  }
}


//GridView
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("lab experiment 3", style: TextStyle(color: Colors.yellow),),
        ),

        body: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 4,
          children: List.generate(5, (index){
            return Padding(padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: NetworkImage('assets/pbg.jpg'),
                fit: BoxFit.fitHeight,),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),

            ),);          
            }),)
    ));  
  }
}

//listView
@override  
  Widget build(BuildContext context) {  
    final appTitle = 'Flutter Basic List Demo';  
  
    return MaterialApp(  
      title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(appTitle),  
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,

          children: const [
            Card(child: ListTile(title: Text('Item1')),
          ),
          Card(child: ListTile(title: Text('Item2')),
          ),
          Card(child: ListTile(title: Text('Item3')),
          ),
          ],
        )
      ),  
    );  
  }  
}

//reverse list items
@override  
  Widget build(BuildContext context) {  
    final appTitle = 'Flutter Basic List Demo';  
  
    return MaterialApp(  
      title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(appTitle),  
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          reverse: true,

          children: const [
            Card(child: ListTile(title: Text('Item1')),
          ),
          Card(child: ListTile(title: Text('Item2')),
          ),
          Card(child: ListTile(title: Text('Item3')),
          ),
          ],
        )
      ),  
    );  
  }  
}

//ListView with multiple images
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    'images/image1.png',
    'images/image2.jpg',
    'images/image4.jpg',
    'images/image5.jpg',
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),//AppBar
      body:ListView.builder(
        itemBuilder: (BuildContext, index){
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: const Text('Productname'),
              subtitle: const Text('Price'),
            )
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: const EdgeInsets.all(5),
        scrollDirection: Axis.vertical,       
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


