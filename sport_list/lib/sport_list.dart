import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_list/model/sport.dart';
import 'package:sport_list/data/strings.dart';
import 'package:sport_list/sport_item.dart';

class SportList extends StatelessWidget{

  late List<Sport> allSport;

  SportList(){
    allSport = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Sport List')
        ),
      body: Center(
        child: ListView.builder(itemBuilder: (context,index){
          return SportItem(listedSport: allSport[index],);
        }, itemCount: allSport.length,)
      ),
    );
  }
  
  List<Sport> veriKaynaginiHazirla() {
    List<Sport> temp = [];

    for(int i=0; i<12; i++){
      var name = Strings.SPORT_NAME[i];
      var info = Strings.SPORT_INFO[i];
      var smallImage = Strings.SPORT_NAME[i].toLowerCase() + '${i+1}.png' ;
      var largImage = Strings.SPORT_NAME[i].toLowerCase() + '_larg${i+1}.jpg';
      Sport addedSport = Sport(name,info,smallImage,largImage);
      temp.add(addedSport);
    }

    return temp;
  }


}