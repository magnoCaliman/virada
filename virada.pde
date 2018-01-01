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
  
  textSize(100);
  
  phil = new SoundFile(this, "phil_comp.mp3");
  bg = loadImage("preto.jpg");
}

void draw()
{
  //bg = loadImage("cara.jpg");
  background(bg);
  
  int hora = hour(); 
  int min = minute();
  int seg = second();
  
  String s_hora = nf(hora, 2);
  String s_min  = nf(min, 2);
  String s_seg  = nf(seg, 2);
  
  int xHora  = (width/2) - 220;
  //int xMin = 55;
  //int xSeg = 100;
  int offset = 150;
  int yText  = (height/2) + 50;
  
  text(s_hora + ":", xHora, yText);
  text(s_min + ":", xHora + offset, yText); 
  text(s_seg, xHora + (offset * 2), yText);
  
  if (hora == 23 && min == 56 && seg == 16) //23:56:16
  {
    phil.play();
    bg = loadImage("cara.jpg");
  }
  
  if (hora == 0 && min == 1 && seg == 40)
  {
    bg = loadImage("preto.jpg");
  }
}

void mousePressed() //click the mouse to test sound
{
  phil.play();
  bg = loadImage("cara.jpg");
}