// IMPORT SOUND LIBRARY VIA SKETCH - IMPORT LIBRARY - SOUND
// WORKS BETTER WITH "PRESENT" MODE (SKETCH - PRESENT), NOT "RUN"

// I'VE BEEN WAITING FOR THIS MOMENT FOR ALL MY LIFE, OH LORD...

import processing.sound.*;
SoundFile phil;
PImage bg;

void setup()
{
  size(599, 600);
  background(0);
  frameRate(1);
  noCursor();
  
  textSize(80);
  
  phil = new SoundFile(this, "phil_comp.mp3");
  bg = loadImage("preto.jpg");
}

void draw()
{
  bg = loadImage("cara.jpg");
  background(bg);
  
  int hora = hour(); 
  int min = minute();
  int seg = second();
  
  int xHora  = (width/2) - 200;
  //int xMin = 55;
  //int xSeg = 100;
  int offset = 150;
  int yText  = (height/2) + 50;
  
  text(hora + ":", xHora, yText);
  text(min + ":", xHora + offset, yText); 
  text(seg, xHora + (offset * 2), yText);
  
  if (hora == 13 && min == 35 && seg == 0)
  {
    phil.play();
    bg = loadImage("cara.jpg");
  }
}