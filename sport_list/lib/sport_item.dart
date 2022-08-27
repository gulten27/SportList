import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/sport.dart';

class SportItem extends StatelessWidget{

  final Sport listedSport;
  const SportItem({required this.listedSport, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    var myTextStyle = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        margin: const EdgeInsets.all(4.0),
        child: ListTile(
          contentPadding: EdgeInsets.all(8.0),
          onTap: (){
            Navigator.pushNamed(context, '/sportInfo',arguments: listedSport);
          },
          leading: Image.asset("images/"+listedSport.sportSmallImage),
          title: Text(listedSport.sportName,style: myTextStyle.headline6,),
          trailing: Icon(Icons.arrow_forward_ios, color: Colors.amber,),
        ),
      ),
    );
  }
}