import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Prediction extends StatefulWidget{
  Prediction({ Key? key}) : super(key: key);

  @override
  _PredictionState createState() => _PredictionState();
}
class _PredictionState extends State<Prediction> {
  var spxText = TextEditingController();
  var usoText = TextEditingController();
  var slvText = TextEditingController();
  var eurusdText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assests/images/img1.jpeg',
                scale: 10,),
              const SizedBox(
                width: 10,
              ),
              const Text('Prediction',
                style: TextStyle(color: Colors.yellow),),
            ],
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/46/80/15/4680152987a33c3a4d9537298b514af6.jpg'),
                    fit: BoxFit.cover)),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Center(
                child: Card(
                  elevation: 10,
                  color: Colors.black.withOpacity(0.2),
                  child: SizedBox(
                    width: 450,
                    height: 500,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.white),
                            controller: spxText,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter SPX: ',
                                hintStyle: TextStyle(color: Colors.white),
                                labelStyle:  TextStyle(color: Colors.white),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.blueAccent
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.white
                                    )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                      width: 3
                                    )
                                )
                            ),
                          ),
                          Container(height: 11,),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            controller: usoText,
                            decoration:InputDecoration(
                                hintText: 'Enter USO: ',
                                hintStyle: TextStyle(color: Colors.white),
                                labelStyle:  TextStyle(color: Colors.white),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.blueAccent
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.white
                                    )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 3
                                    )
                                )
                            ) ,
                          ),
                          Container(height: 11,),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            controller: usoText,
                            decoration:InputDecoration(
                                hintText: 'Enter SLV: ',
                                hintStyle: TextStyle(color: Colors.white),
                                labelStyle:  TextStyle(color: Colors.white),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.blueAccent
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.white
                                    )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 3
                                    )
                                )
                            ) ,
                          ),
                          Container(height: 11,),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            controller: usoText,
                            decoration:InputDecoration(
                                hintText: 'Enter EUR/USD: ',
                                hintStyle: TextStyle(color: Colors.white),
                                labelStyle:  TextStyle(color: Colors.white),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.blueAccent
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.white
                                    )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 3
                                    )
                                )
                            ) ,
                          ),
                          Container(height: 11,),
                          ElevatedButton(onPressed: (){
                            String uspx = spxText.text;
                            String uuso = usoText.text;
                            String uslv = slvText.text;
                            String ueurusd = eurusdText.text;
                          }, child: Text(
                            "Predict"
                          )),
                          Container(height: 11,),
                          TextField(
                            controller: usoText,
                            decoration:InputDecoration(
                                hintText: 'Predicted Gold Price: ',
                                hintStyle: TextStyle(color: Colors.white),
                                labelStyle:  TextStyle(color: Colors.white),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.blueAccent
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.white
                                    )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(11),
                                    borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 3
                                    )
                                )
                            ) ,
                          ),



                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
        )
    );
  }
}