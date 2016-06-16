import saito.objloader.*;

class Model {
  private float posX, posY, posZ;
  private float rotX, rotY, rotZ;
  private PImage texture;

  private OBJModel model;

  Model(PApplet P){
    texture = loadImage("data/Bear.png");
    model = new OBJModel(P);
    model.load("data/Bear.obj");
    model.scale(120);
    model.setDrawMode(POLYGON);
    model.texture(texture);
    model.setTexture(texture);
  }
  
  public void Draw(){
    model.draw();
  }
}