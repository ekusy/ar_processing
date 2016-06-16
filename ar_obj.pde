import saito.objloader.*;

import processing.video.*;
import jp.nyatla.nyar4psg.*;

OBJModel model;
Capture cam;
MultiMarker nya;
Sweat s;

float ang=180.0;
PImage texture;
void setup() {
  size(640, 480, P3D);
  colorMode(RGB, 100);
  println(MultiMarker.VERSION);
  cam=new Capture(this, 640, 480);
  nya=new MultiMarker(this, width, height, "../libraries/nyar4psg/data/camera_para.dat", NyAR4PsgConfig.CONFIG_PSG);
  nya.addARMarker("../libraries/nyar4psg/data/patt.hiro", 80);
  //  nya=new MultiMarker(this,width,height,"../libraries/nyar4psg/data/camera_para.dat",NyAR4PsgConfig.CONFIG_PSG);
  //  nya.addARMarker("../libraries/nyar4psg/data/patt.hiro",80);
  cam.start();
  println("start");
  smooth();
  texture = loadImage("data/Bear.png");
  model = new OBJModel(this);
  model.load("data/Bear.obj");
  model.scale(120);
  model.setDrawMode(POLYGON);
  model.texture(texture);
  model.setTexture(texture);
  s = new Sweat();
  noStroke();
}

void draw()
{
  if (cam.available() !=true) {
    //println("not available");  
    return;
  }
  sphere(30);
  cam.read();
  nya.detect(cam);
  background(cam);
  //nya.drawBackground(cam);//frustumを考慮した背景描画
  if ((!nya.isExist(0))) {
    return;
  }
  nya.beginTransform(0);
  pushMatrix();
  rotateZ(radians(ang));
  translate(0.0, 90.0, 0.0);
  model.enableTexture();

  model.draw();
  
  s.Draw();
  popMatrix();
  nya.endTransform();
}

void keyPressed() {
  if (key == 'a') {
    if (ang<360)
      ang++;
  } else if (key == 'd') {
    if (ang>0)
      ang--;
  }
  else if(key == 's'){
     s.start(); 
  }
}