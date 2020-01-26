import 'package:flutter/cupertino.dart';

class dogStatus {

  int generalState, emote;

  dogStatus(int generalState, int emote) {
    this.generalState = generalState;
    this.emote = emote;
  }

  Widget emoteBubble() {
    switch(emote){
      case 0:{ // sad -> anger
        return Image.asset('assets/img/emote_faceAngry.png');
      }
      break;
      
      case 1:{ // sad -> dazed/ confused
        return Image.asset('assets/img/emote_swirl.png');
      }
      break;

      case 2:{ // neutral -> sleep
        return Image.asset('assets/img/emote_sleeps.png');
      }
      break;

      case 3:{ // neutral -> dots
        return Image.asset('assets/img/emote_dots3.png');
      }
      break;

      case 4:{ // happy -> happy
        return Image.asset('assets/img/emote_faceHappy.png');
      }
      break;

      case 5:{ // happy -> heart
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
          return Image.asset('assets/img/idle-sad.gif');
        }
        break;

      case 1:
        {
          return Image.asset('assets/img/idle-neutral.gif');
        }
        break;

      case 2:
        {
          return  Image.asset('assets/img/idle-happy.gif');
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