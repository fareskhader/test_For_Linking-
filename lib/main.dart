/*
 //=====> first example week 7
 //table
 *//*
import 'package:flutter/material.dart';

void main()=> runApp(FaresApp());

class FaresApp extends StatelessWidget {
  const FaresApp({super.key});

 final String _title = 'Fluter code sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.black,
        )
      ),
      home:
      Scaffold(
        appBar: AppBar(title: Text(_title),centerTitle: true),
        body: MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
         children: [
           Table(
             border: TableBorder.all(),
            /* columnWidths: const <int, TableColumnWidth>{
               0: IntrinsicColumnWidth(),
               1: FlexColumnWidth(),
               2: FixedColumnWidth(64),
             },*/
             defaultVerticalAlignment: TableCellVerticalAlignment.middle,
             children: [
               TableRow(
                 children: [
                   Container(
                     height: 35,
                     color: Colors.green,
                   ),
                   TableCell(child: Text("Fares khader",textAlign: TextAlign.center,)),
                   Container(
                     height: 35,
                     color: Colors.green,
                   ),
                 ]
               ),
               TableRow(
                   decoration: const BoxDecoration(
                     color: Colors.grey,
                   ),
                 children: [
                   Container(
                     child: Icon(Icons.face),
                     color: Colors.red,
                     height: 44,
                   ),
                   TableCell(child:Text("Nawras Khdader",textAlign: TextAlign.center,) ),
                   Container(
                     child: Icon(Icons.food_bank),
                     color: Colors.yellow,
                     height: 44,
                   ),
                 ]
               )
             ],
           )
         ],
      ),
    );
  }
}
*/
//example page 4 ==> table example
/*
import 'package:flutter/material.dart';

void main()=> runApp(FaresApp());

class FaresApp extends StatelessWidget {
  const FaresApp({super.key});

  @override
  Widget build(BuildContext context) {
   TextStyle bold = TextStyle(fontWeight: FontWeight.bold);
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue,

          appBarTheme: AppBarTheme(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.black,
          )      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Fares Khader Is Working"),centerTitle: true,),
        body: Center(
          child: Column(
            children: [
              Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                columnWidths: <int,TableColumnWidth>{
                  //1 : IntrinsicColumnWidth(),
                },
                children: [

                  TableRow(

                    decoration: BoxDecoration(
                      color: Colors.yellow
                    ),

                  children:[
                    Container(
                      height: 50,
                    ),
                    Text('January', style: TextStyle(fontWeight: FontWeight.bold))
                    ,Text('February', style: bold,),
                    Text('March', style: bold,),
                    TableCell(child: Text("JaleelKhdaer",style: bold,))
                  ]
                  ),
                  TableRow(

                      decoration: BoxDecoration(
                          color: Colors.green,
                      ),
                      children:[
                        Container(
                          height: 50,
                        ),
                        Center(child: Text('January', style: TextStyle(fontWeight: FontWeight.bold)))
                        ,Text('February', style: bold,textAlign: TextAlign.center,),
                        Text('March', style: bold,textAlign: TextAlign.center,),
                        TableCell(child: Text("JaleelKhdaer",style: bold,textAlign: TextAlign.center,))
                      ]
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
*/
//======> nothing new but example slide 6 about Snackbar
/*
import 'package:flutter/material.dart';

void main()=> runApp(SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Demo'),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('yay! A SnackBar',),
                action: SnackBarAction(label: 'Undo', onPressed: (){}),
                 ));
              },


                child:Text("Show SnackBar"),

              ),
            );
          }
        ),
      ),
    );
  }
}
*/
/*
import 'package:flutter/material.dart';

void main()=>runApp(FaresApp());

class FaresApp extends StatelessWidget {
  const FaresApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
        )
      ),
      title: 'image program',
      home: Scaffold(
        appBar: AppBar(title: Text("how to manipulate images"),centerTitle: true,),
        body: MyPage(),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 4),
        child: Image.network('https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
        ),
        ),
        Expanded(
        flex: 2,
        child:
        Image.network('https://plus.unsplash.com/premium_photo-1689530775582-83b8abdb5020?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
        ),
        Expanded(child: Image.network('https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'))

      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          Icon(Icons.star, color: Colors.green[500]),
          const Icon(Icons.star, color: Colors.black),
          const Icon(Icons.star, color: Colors.black),
        ],
    ),
    ]
    );
  }
}
*//*
//====> last example in week 7
import 'package:flutter/material.dart';

void main()=>runApp(FaresApp());

class FaresApp extends StatelessWidget {
  const FaresApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepOrangeAccent,
              foregroundColor: Colors.white,
            ),

      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        title: Text('oppenhimer discreption'),centerTitle: true,
        ),
       body: FaresMovieApp(),
      ),
    );
  }
}
class FaresMovieApp extends StatelessWidget {
  const FaresMovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/images.jpg',width: 150,height: 200,
          fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(

            width: 500,
            child: Column(

              children: [
                Padding(padding: EdgeInsets.all(20)),
                Text('Oppenheimer',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                Text("A dramatization of the life story of J. Robert Oppenheimer, the physicist who had a large hand in the development of the atomic bombs that brought an end to World War II.",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,),
                SizedBox(height: 20,child: Container(color: Colors.blue,),),
                Padding(padding: EdgeInsets.all(10)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.star,color: Colors.deepOrangeAccent,),
                        Icon(Icons.star,color: Colors.deepOrangeAccent,),
                        Icon(Icons.star,color: Colors.deepOrangeAccent,),
                        Icon(Icons.star,color: Colors.deepOrangeAccent,),
                        Icon(Icons.star_half,color: Colors.deepOrangeAccent,),
                      ],
                    ),
                    Text("977k Reviews",style: TextStyle(fontWeight: FontWeight.bold),),
                    //Padding(padding: EdgeInsets.all(20)),
                    Icon(Icons.share,color: Colors.blue,)
                  ],

                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.movie,color: Colors.deepOrangeAccent,),
                        Text("Movies",style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.store_mall_directory_sharp,color: Colors.deepOrangeAccent,),
                        Text("Movies",style: TextStyle(fontWeight: FontWeight.bold),)
                       , Text("at Streamio ",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.timelapse_outlined,color: Colors.deepOrangeAccent,),
                        Text("Movies",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
*//*
//======> week 8 slide 1
import 'package:flutter/material.dart';

void main()=>runApp(FaresApp());

class FaresApp extends StatelessWidget {
  const FaresApp({super.key});
  static const String _title ='Drawer Demo';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyHomePage(title:_title),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key,required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),centerTitle: true,backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Text('My Page'),
      ),
      drawer:Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Drawer Hearder',textAlign: TextAlign.center,),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            ),
            ListTile(
              title: Text('Item#1'),
              leading: Icon(Icons.home,),
              subtitle: Text('First_Item'),
              tileColor: Colors.green,
              onTap: (){

              },
            ),
            ListTile(
              title: Text('Item#2'),
              leading: Icon(Icons.home),
              subtitle: Text('seconde_Item'),
              tileColor: Colors.green,
              onTap: (){
              },
            )
          ],
        ),
      ),
    );
  }
}
*/
/*
//==>stack boxes example slide 2
import 'package:flutter/material.dart';

void main()=>runApp(FaresApp());

class FaresApp extends StatelessWidget {
  const FaresApp({super.key});
static const AppTitle='Stack Demo';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppTitle,
      home: MyHomePage(title:AppTitle),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key,required this.title});
     final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: Stack(
          children:[
            Container(
              width: 100,
                height: 100,
                color: Colors.blue,
            ),

      Container(
        width: 90,
        height: 90,
        color: Colors.green,
      ),
      Container(
        width: 80,
        height: 80,
        color: Colors.blue,
      ),

          ],
        ),
      ),
    );
  }
}
*/
/*
import 'package:flutter/material.dart';

void main()=>runApp(FaresApp());

class FaresApp extends StatelessWidget {
  const FaresApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GridView.count(
            crossAxisCount: 5,
            children: [
              Icon(Icons.other_houses),
              Icon(Icons.phone_iphone),
              Icon(Icons.local_see),
              Icon(Icons.local_pizza),
              Icon(Icons.location_city),
              Icon(Icons.lock),
              Icon(Icons.loupe),
              Icon(Icons.memory),
              Icon(Icons.mic),
              Icon(Icons.map),
              Icon(Icons.monetization_on),
              Icon(Icons.mood),
              Icon(Icons.mood_bad),
              Icon(Icons.movie),
              Icon(Icons.message),
              Icon(Icons.motorcycle),
              Icon(Icons.note),
              Icon(Icons.palette),
              Icon(Icons.perm_device_information),
              Container(child: Icon(Icons.phishing),color: Colors.red,),
              Icon(Icons.pie_chart),
              Icon(Icons.pool),
              Icon(Icons.power),
              Icon(Icons.print,color: Colors.blue,),
              Icon(Icons.public),
              Icon(Icons.radio),
              Icon(Icons.shopping_cart),
              Icon(Icons.spa),
              Icon(Icons.speaker),
              Icon(Icons.store),
              Icon(Icons.thumb_up),
              Icon(Icons.timer),
              Icon(Icons.watch),
            ],

          ),
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'dart:convert';
void main()=>runApp(FaresApp());

class FaresApp extends StatelessWidget {
  const FaresApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: BoxDemo(),
    );
  }
}
class BoxDemo extends StatefulWidget {
  const BoxDemo({super.key});

  @override
  State<BoxDemo> createState() => _BoxDemoState();
}

class _BoxDemoState extends State<BoxDemo> {
  List _peopleList = [];

  void _getPeople() async//for reading purposess
  {
    String peopleString=await DefaultAssetBundle.of(context).loadString('assets/people.json');
    dynamic jsonData =json.decode(peopleString);

    if(mounted)
    {
      _peopleList=jsonData['results'];
    }

  }
  void initState()
  {
 super.initState();
 _getPeople();
  }
  String properCase(String input)
  {
    return input[0].toUpperCase()+ input.substring(1).toLowerCase();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FaresApp"),backgroundColor: Colors.blue,centerTitle: true,),
      body: showPeople(),
    );
  }
    Widget showPeople(){
      return ListView.builder(
          itemCount:_peopleList.length ,
          itemBuilder:(context,int i){
            String fullName = '${properCase(_peopleList[i]['name']['first'])}' '${properCase(_peopleList[i]['name']['last'])}';
            String cell=_peopleList[i]['email'];
          } );
    }

}













