import 'package:flutter/material.dart';
import 'package:dicoding_finalsubbegin/model/char.dart';

class DetailChar extends StatelessWidget {
  final Character char;

  DetailChar({required this.char});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      body: SingleChildScrollView(child: Container(color: Colors.black,child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,children: [
        FittedBox(child: Stack(children: [
          Container( height: 400,child:
          ClipRRect(borderRadius: BorderRadius.circular(25), child:Image.asset(char.imageAsset, fit: BoxFit.fitHeight,),
          
        )
        ),
        SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                       
                      ],
                    ),
                  ),
                ),
        ],),
        fit: BoxFit.fill),
        
        
         
        Padding(padding: const EdgeInsets.all(14), child: Container(child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
             Text(char.name!, style: TextStyle(fontSize: 26, color: Colors.white, fontFamily: "tarrget"))
          ],),
          SizedBox(height: 25,)
          ,
          Column(children: [
            // Row(children: [Text("About", style: TextStyle(fontFamily: "Roboto", fontSize: 16, color: Colors.white),)],)
            // ,
            
            Container(child: Column(children: [
              Padding(padding: const EdgeInsets.all(10), child: 
              Row( mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ 
                Expanded(child: Column(children: [Text("Status:", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17),), SizedBox(height: 5,),
                Text(char.status, style: TextStyle(color: Colors.white.withOpacity(0.6)), ),],),)
                ,
                Expanded(child:Column( crossAxisAlignment: CrossAxisAlignment.center,children: [Text("Origin:", textAlign: TextAlign.center ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17),), SizedBox(height: 5,),
                Text(char.origin, style: TextStyle(color: Colors.white.withOpacity(0.6)), ),],),)
                
                 
                
                ]),),
                SizedBox(height: 10,)
                ,
                 Padding(padding: const EdgeInsets.all(10), child: 
              Row( mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ 
                Expanded(child: Column(children: [Text("Height:", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17),), SizedBox(height: 5,),
                Text(char.height, style: TextStyle(color: Colors.white.withOpacity(0.6)), ),],),)
                ,
                Expanded(child:Column(children: [Text("Weight:", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17),), SizedBox(height: 5,),
                Text(char.weight, style: TextStyle(color: Colors.white.withOpacity(0.6)), ),],),)
                 
                
                ]),),
                SizedBox(height: 10,)
                ,
                 Padding(padding: const EdgeInsets.all(10), child: 
              Row( mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ 
               Expanded(child: Column(children: [Text("Eyes:", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17),), SizedBox(height: 5,),
                Text(char.eyes, style: TextStyle(color: Colors.white.withOpacity(0.6)), ),],),)
                ,
                Expanded(child:Column(children: [Text("Gender:", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17),), SizedBox(height: 5,),
                Text(char.gender, style: TextStyle(color: Colors.white.withOpacity(0.6)), ),],),)
                 
                
                ]),),
                SizedBox(height: 10,)
                ,
                 Padding(padding: const EdgeInsets.all(10), child: 
              Row( mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ 
               Expanded(child: Column(children: [Text("Species:", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17),), SizedBox(height: 5,),
                Text(char.species, style: TextStyle(color: Colors.white.withOpacity(0.6)), ),],),)
                ,
                Expanded(child:Column(children: [Text("Age:", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17),), SizedBox(height: 5,),
                Text(char.age, style: TextStyle(color: Colors.white.withOpacity(0.6)), ),],),)
                 
                
                ]),),
                SizedBox(height: 10,)
                ,
                Padding(padding: const EdgeInsets.all(10), child: 
              Row( mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ 
               Expanded(child: Column(children: [Text("Occupation:", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 17),), SizedBox(height: 5,),
                Text(char.occupation, style: TextStyle(color: Colors.white.withOpacity(0.8)), ),],),)
                ,
                
                 
                
                ]),),
                SizedBox(height: 10,)
                ,
                 Padding(padding: const EdgeInsets.all(10), child: 
                 Container(child:Row( mainAxisAlignment: MainAxisAlignment.center,children: [ 
               Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [Text("Biography:", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 23),), SizedBox(height: 5,),
                Container( padding: const EdgeInsets.all(10),child: Text(char.biography,textAlign: TextAlign.center, style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 17, height: 1.5), ))
                ,
                ],),)
                ,
                
                 
                
                ]), )
              ),

            ]),)
          ],)
         
        ]),),)
        
        
          
      ])),)
      ,backgroundColor: Color(0xFF0A043C) ,
    );
  }
}

class name extends StatefulWidget {
  name({Key? key}) : super(key: key);

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}