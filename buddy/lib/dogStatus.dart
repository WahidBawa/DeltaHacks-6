import 'package:flutter/cupertino.dart';

class dogStatus {

  int generalState, emote;

  dogStatus(int generalState, int emote) {
    this.generalState = generalState;
    this.emote = emote;
  }

  Widget emoteBubble() {
    switch(emote){
      case 1:{ // sad -> anger
        return Image.asset('assets/img/emote_faceAngry.png');
      }
      break;
      
      case 2:{ // sad -> dazed/ confused
        return Image.asset('assets/img/emote_swirl.png');
      }
      break;

      case 3:{ // neutral -> sleep
        return Image.asset('assets/img/emote_sleeps.png');
      }
      break;

      case 4:{ // neutral -> dots
        return Image.asset('assets/img/emote_dots3.png');
      }
      break;

      case 5:{ // happy -> happy
        return Image.asset('assets/img/emote_faceHappy.png');
      }
      break;

      case 6:{ // happy -> heart
        return  Image.asset('assets/img/emote_heart.png');
      }
      break;

      default:{
        print("h");
      }
      break;
    }
  }

  Widget generalAnimation() {
    switch(generalState) {
      case 0:
        {
          return Image.asset('assets/img/idle-sad.gif', height: 200,);
        }
        break;

      case 1:
        {
          return Image.asset('assets/img/idle-neutral.gif', height: 200,);
        }
        break;

      case 2:
        {
          return  Image.asset('assets/img/idle-happy.gif', height: 200,);
        }
        break;

      default:
        {
          print(
              "There was an error in the generalAnimation method of the dogStatus class");
        }
        break;
    }
  }

  Widget msg() {
    switch(generalState) {
      case 0:
        {
          return Text("I don't feel so good Mr. Lark...");
        }
        break;

      case 1:
        {
          return Text("We just vibin'");
        }
        break;

      case 2:
        {
          return Text("I'm feeling good; and that means you are too!");
        }
        break;

      default:
        {
          print(
              "There was an error in the generalAnimation method of the dogStatus class");
        }
        break;
    }
  }

}