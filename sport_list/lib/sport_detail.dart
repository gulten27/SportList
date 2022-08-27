import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import 'model/sport.dart';

class SportDetail extends StatefulWidget{
  final Sport selectedSport;
  const SportDetail({required this.selectedSport, Key? key}) : super(key: key);

  @override
  _SportDetailState createState() => _SportDetailState();

}

class _SportDetailState extends State<SportDetail> {
  Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();

    print('init state çalıstı');
    WidgetsBinding.instance.addPostFrameCallback((_) => appbarRenginiBul());
    // _generator = PaletteGenerator.fromImageProvider(AssetImage(assetName));
  }

  @override
  Widget build(BuildContext context) {
    print('build çalıstı');
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appbarRengi,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.selectedSport.sportName + "and Features",style: TextStyle(color: Colors.white),),
            centerTitle: true,
            background: Image.asset(
              'images/' + widget.selectedSport.sportLargeImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Text(
                widget.selectedSport.sportInfo,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        ),
      ],
    ));
  }

  void appbarRenginiBul() async {
    
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/${widget.selectedSport.sportLargeImage}'));
    if(_generator.vibrantColor != null){
      appbarRengi = _generator.vibrantColor!.color;
    }
    
    setState(() {});
    print(appbarRengi);
  }
}