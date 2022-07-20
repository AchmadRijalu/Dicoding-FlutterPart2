import 'package:dicoding_finalsubbegin/detail_char.dart';
import 'package:dicoding_finalsubbegin/model/char.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MainCharacter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth <= 600) {
          return mainCharMobile();
        } else {
          return mainCharWeb(gridCount: 4,);
        }
      }),
    )
        //  mainCharMobile(gridCount: 2,),
        );
  }
}

class mainCharWeb extends StatelessWidget {
final int gridCount;

  mainCharWeb({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:SingleChildScrollView(child: 
      Padding(
        padding: const EdgeInsets.all(14),
        child:  Container( color: Colors.black,child: Column(children: [

          Container(height: 250,color: Colors.black , padding: const EdgeInsets.all(23), child:  Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(child: ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                  child:  Image.asset("images/tekken7post.jpg"),
                ),)
              ,
             
              SizedBox(width: 20,),
              Expanded(child: Text("Tekken 7 Characters",
                          style: TextStyle(
                              fontSize: 38,
                              color: Colors.white,
                              fontFamily: "Tarrget"),
                        ),)
              
            ],
          ),)
        ,
          GridView.count(
              shrinkWrap: true,
              // padding: const EdgeInsets.all(14),
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: gridCount,
              children: characterlist.map((chara) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailChar(char: chara);
                    }));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(chara.imageAsset),
                              fit: BoxFit.fill,
                              alignment: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                chara.name!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Tarrget",
                                  shadows: [
                                    Shadow(
                                      blurRadius: 4.0,
                                      color: Colors.yellow,
                                      offset: Offset(-1.0, 3.0),
                                    ),
                                    Shadow(
                                      color: Color(0xFF0A043C),
                                      blurRadius: 3.0,
                                      offset: Offset(-1.0, 3.0),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                );
              }).toList(),
            )
         
        ]),) 
      ),
      )
      , backgroundColor: Colors.black,
    );
  }
}

class mainCharMobile extends StatefulWidget {
  // final int gridCount;

  // mainCharMobile({required this.gridCount});
  _mainCharMobile createState() => _mainCharMobile(gridCount: 2);
}

class _mainCharMobile extends State<mainCharMobile> {
  
  final int gridCount;

  _mainCharMobile({required this.gridCount});

  List<Character> showinglist = List.from(characterlist);
  void SearchList(String value) {
    setState(() {
      showinglist = characterlist
          .where((element) =>
              element.name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: Column(
                  children: [
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Characters",
                          style: TextStyle(
                              fontSize: 38,
                              color: Colors.white,
                              fontFamily: "Roboto"),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        )
                      ],
                    )),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                            child: CupertinoTextField(
                          padding: const EdgeInsets.all(16),
                          placeholder: "Search Character",
                          placeholderStyle: TextStyle(color: Colors.black),
                          onChanged: ((value) => SearchList(value)),
                        )),
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 16,
            ),
            GridView.count(
              shrinkWrap: true,
              // padding: const EdgeInsets.all(14),
              physics: BouncingScrollPhysics(),
              crossAxisCount: gridCount,
              children: showinglist.map((chara) {
                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailChar(char: chara);
                    }));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(chara.imageAsset),
                              fit: BoxFit.fill,
                              alignment: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                chara.name!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Tarrget",
                                  shadows: [
                                    Shadow(
                                      blurRadius: 4.0,
                                      color: Colors.yellow,
                                      offset: Offset(-1.0, 3.0),
                                    ),
                                    Shadow(
                                      color: Color(0xFF0A043C),
                                      blurRadius: 3.0,
                                      offset: Offset(-1.0, 3.0),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                );
              }).toList(),
            )
            
          ]),
        ),
      )),
      backgroundColor: Color(0xFF0A043C),
    );
  }
}
