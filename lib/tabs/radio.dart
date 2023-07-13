import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_c8_friday/api_manager.dart';

import '../radio_item.dart';

class RadioTab extends StatefulWidget {
  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  late AudioPlayer audioPlayer;

  @override
  void initState() {
    audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 2,
          child: Image.asset(
            "assets/images/radio_image.png",
            height: 150,
            width: 150,
          ),
        ),
        Expanded(
          flex: 1,
          child: FutureBuilder(
              future: ApiManager.getRadios(),
              builder: (context , snapshot){
                if(snapshot.connectionState == ConnectionState.waiting){
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }else if(snapshot.hasError){
                  return Center(
                    child: Text("something went wrong"),
                  );
                }
                var radios = snapshot.data??[];
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics:PageScrollPhysics(),
                  itemBuilder: (context , index){
                    return RadioItem(radios[index],audioPlayer);
                  },
                  itemCount: radios.length,
                );
              }
          ),
        )
      ],
    );
  }
}
