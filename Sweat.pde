class Sweat extends Object{
  private PImage img;
  private int count;
  private float time = 0.8;
  private int mTime;

  private int startTime;
  private boolean flg = false;

  Sweat() {
    super("Sweat");
    super.setPosition(20.0, -220.0, 60.0);
    img = loadImage("./data/sweat.png");
    mTime = int(time*1000);
  }

  public void start()
  {
    if (flg==false) {
      count = 0;
      startTime = millis();
      flg = true;
    }
  }

  public void Draw()
  {
    if (!(millis()>startTime+mTime) && flg == true) {
      println("sweat:"+count);
      count+=3;
      pushMatrix();
      rotateZ(radians(180.0));
      translate(pos.x,pos.y,pos.z);
      translate(0.0,count,0.0);
      scale(0.3);
      image(img, 0.0, count);
      popMatrix();
    } else {
      flg=false;
    }
  }
}