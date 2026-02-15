//This function will be used to garente a swap between current dice face and another one
//Meaning if you get 2 for example the next one can't be 2
//This is used for animating and not for rolling

import 'dart:math';

int swap(int curntFace) {
  curntFace += Random().nextInt(4) + 1;
  //Previous line will add to the current face a value in range [1,5]

  //if statement makes sure face value remains <=6
  if (curntFace > 6) {
    curntFace -= 6;
  }

  return curntFace;
}
