class Sweat{
  private PImage img;
  private int count;
  private float time = 0.8;
  private int mTime;

  private int startTime;
  private boolean flg = false;

  Sweat() {
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
      translate(20, -300.0+count, 60.0);
      scale(0.5);
      image(img, 0.0, count);
      popMatrix();
    } else {
      flg=false;
    }
  }
}