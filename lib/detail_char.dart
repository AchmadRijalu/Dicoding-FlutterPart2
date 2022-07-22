import 'package:flutter/material.dart';
import 'package:dicoding_finalsubbegin/model/char.dart';

class DetailChar extends StatelessWidget {
  final Character char;

  DetailChar({required this.char});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return detailCharMobile(
              char: char,
            );
          } else {
            return detailCharWeb(char: char);
          }
        },
      ),
      backgroundColor: Color(0xFF0A043C),
    );
  }
}

class detailCharWeb extends StatelessWidget {
  final Character char;
  detailCharWeb({required this.char});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 130),
        child: Center(
          child: Container(
              
              padding: const EdgeInsets.all(16),
              // color: Colors.brown
              
              child: Column(
                children: [
                  Row(
                    
                    mainAxisAlignment:MainAxisAlignment.center
                    ,
                    children: [
                      Container(
                        child: Text(
                          char.name!,
                          style: TextStyle(fontSize: 45, fontFamily: "Tarrget", color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 40,)
                  ,
                  Container(child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [

                     Flexible(child: Column(children: [
                     Container( color: Colors.cyan,child: Column(mainAxisAlignment: MainAxisAlignment.start,children: [

                      Container( width: 400,color: Color(0xFF03506F),child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,children: [

                      Image.asset(char.imageAsset, fit: BoxFit.fill)
                      ,
                      SizedBox(height: 20,),
                      Container(child: Row(children: [
                        Expanded(child: Column(children: [
                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                            Flexible(flex: 2,child: Text("Name:", style: TextStyle(fontSize: 18, color: Colors.white), textAlign: TextAlign.center,))
                             
                          ,
                            Expanded(child: Text(char.name!,style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.8), fontFamily: "RobotoReg"), textAlign: TextAlign.center,))
                              
                          ],)
                          ,
                          SizedBox(height: 20,),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                            Flexible(flex: 2,child: Text("Status:", style: TextStyle(fontSize: 18, color: Colors.white), textAlign: TextAlign.center,))
                             
                          ,
                            Expanded(child: Text(char.status,style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.8), fontFamily: "RobotoReg"), textAlign: TextAlign.center,))
                          ],)
                          ,SizedBox(height: 20,),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                             Flexible(flex: 2,child: Text("Origin:", style: TextStyle(fontSize: 18, color: Colors.white), textAlign: TextAlign.center,))
                             
                          ,
                            Expanded(child: Text(char.origin,style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.8), fontFamily: "RobotoReg"), textAlign: TextAlign.center,))
                          ],)
                          ,SizedBox(height: 20,),
                          
                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                              Flexible(flex: 2,child: Text("Height:", style: TextStyle(fontSize: 18, color: Colors.white), textAlign: TextAlign.center,))
                             
                          ,
                            Expanded(child: Text(char.height,style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.8), fontFamily: "RobotoReg"), textAlign: TextAlign.center,))
                          ],),
                          SizedBox(height: 20,),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                             Flexible(flex: 2,child: Text("Weight:", style: TextStyle(fontSize: 18, color: Colors.white), textAlign: TextAlign.center,))
                             
                          ,
                            Expanded(child: Text(char.weight,style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.8), fontFamily: "RobotoReg"), textAlign: TextAlign.center,))
                          ],),
                          SizedBox(height: 20,),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                              Flexible(flex: 2,child: Text("Eyes:", style: TextStyle(fontSize: 18, color: Colors.white), textAlign: TextAlign.center,))
                             
                          ,
                            Expanded(child: Text(char.eyes,style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.8), fontFamily: "RobotoReg"), textAlign: TextAlign.center,))
                          ],),
                          SizedBox(height: 20,),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                              Flexible(flex: 2,child: Text("Gender:", style: TextStyle(fontSize: 18, color: Colors.white), textAlign: TextAlign.center,))
                             
                          ,
                            Expanded(child: Text(char.gender,style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.8), fontFamily: "RobotoReg"), textAlign: TextAlign.center,))
                          ],),
                          SizedBox(height: 20,),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                              Flexible(flex: 2,child: Text("Species:", style: TextStyle(fontSize: 18, color: Colors.white), textAlign: TextAlign.center,))
                             
                          ,
                            Expanded(child: Text(char.species,style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.8), fontFamily: "RobotoReg"), textAlign: TextAlign.center,))
                          ],),
                          SizedBox(height: 20,),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                             Flexible(flex: 2,child: Text("Age:", style: TextStyle(fontSize: 18, color: Colors.white), textAlign: TextAlign.center,))
                             
                          ,
                            Expanded(child: Text(char.age,style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.8), fontFamily: "RobotoReg"), textAlign: TextAlign.center,))
                          ],),
                          SizedBox(height: 20,),
                          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                             Flexible(flex: 2,child: Text("Occupation:", style: TextStyle(fontSize: 18, color: Colors.white), textAlign: TextAlign.center,))
                             
                          ,
                            Expanded(child: Text(char.occupation,style: TextStyle(fontSize: 18, color: Colors.white.withOpacity(0.8), fontFamily: "RobotoReg"), textAlign: TextAlign.center,))
                          ],)
                          , 
                          SizedBox(height: 20,)

                        
                        ],)),
                       
                      ],),)
                      
                      
                      ]),)
                    
                     ],),),
                    ],)),
                    SizedBox(width: 20,)
                    ,
                    Expanded(child: Padding(child: 

                    Container(child: Column(children: [ Row(children: [Text("Biography", style: TextStyle(fontSize: 30, color: Colors.white),)],),
                      SizedBox(height: 20,),
                      Text(char.biography,style: TextStyle(height: 2.0, color: Colors.white.withOpacity(0.8)),)]),)
                    
                    
                    , padding: const EdgeInsets.all(6),)
                    ),
                  
                  ]),
                  )
                ],
              )
              ),
        ),
      )),
      backgroundColor: Color(0xFF0A043C),
    );
  }
}

class detailCharMobile extends StatelessWidget {
  final Character char;

  detailCharMobile({required this.char});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          color: Colors.black,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            FittedBox(
                child: Stack(
                  children: [
                    Container(
                        height: 400,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            char.imageAsset,
                            fit: BoxFit.fitHeight,
                          ),
                        )),
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
                  ],
                ),
                fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Container(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(char.name!,
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontFamily: "tarrget"))
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      // Row(children: [Text("About", style: TextStyle(fontFamily: "Roboto", fontSize: 18, color: Colors.white.withOpacity(0.8), fontFamily: "RobotoReg", color: Colors.white),)],)
                      // ,

                      Container(
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Status:",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          char.status,
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.6)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Origin:",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          char.origin,
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.6)),
                                        ),
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Height:",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          char.height,
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.6)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Weight:",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          char.weight,
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.6)),
                                        ),
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Eyes:",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          char.eyes,
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.6)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Gender:",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          char.gender,
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.6)),
                                        ),
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Species:",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          char.species,
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.6)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Age:",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          char.age,
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.6)),
                                        ),
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Occupation:",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          char.occupation,
                                          style: TextStyle(
                                              color: Colors.white
                                                  .withOpacity(0.8)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Biography:",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 23),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Text(
                                                  char.biography,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.6),
                                                      fontSize: 17,
                                                      height: 1.5),
                                                )),
                                          ],
                                        ),
                                      ),
                                    ]),
                              )),
                        ]),
                      )
                    ],
                  )
                ]),
              ),
            )
          ])),
    ));
  }
}
