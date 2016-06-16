import saito.objloader.*;

class Model extends Object{
  private PImage texture;

  private OBJModel model;

  Model(PApplet P){
    super("Model",new PVector(0.0,90.0,0.0),new PVector(0.0,0.0,180.0));
    texture = loadImage("data/Bear.png");
    model = new OBJModel(P);
    model.load("data/Bear.obj");
    model.scale(120);
    model.setDrawMode(POLYGON);
    model.texture(texture);
    model.setTexture(texture);
  }
  
  public void Draw(){
    pushMatrix();
    rotateZ(radians(rot.z));
    translate(pos.x,pos.y,pos.z);
    model.enableTexture();
    model.draw();
    popMatrix();
  }
}