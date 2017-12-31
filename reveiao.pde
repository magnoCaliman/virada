import processing.sound.*;
SoundFile phil;
PImage foto;

void setup()
{
  size(599, 600);
  background(0);
  frameRate(1);
  noCursor();
  
  textSize(80);
  
  phil = new SoundFile(this, "phil.mp3");
  foto = loadImage("cara.jpg");
}

void draw()
{
  background(foto); //se tirar, com image ainda funciona...
  //image(foto, 100, 100);
  
  int hora = hour(); 
  int min = minute();
  int seg = second();
  
  int xHora  = (width/2) - 200;
  //int xMin = 55;
  //int xSeg = 100;
  int offset = 150;
  int yText  = height/2;
  
  text(hora + ":", xHora, yText);
  text(min + ":", xHora + offset, yText); 
  text(seg, xHora + (offset * 2), yText);
  
  if (hora == 13 && min == 26 && seg == 55)
  {
    phil.play();
  }
}

void mousePressed()
{
  phil.play();
}