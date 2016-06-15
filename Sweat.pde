class Sweat {
  private  int y;
  private PImage img;
  private int count;
  private float time = 0.8;

  private int mCount;
  private int mTime;

  private int startTime;
  private boolean flg = false;
  Sweat() {
    img = loadImage("./data/sweat.png");
    mTime = int(time*1000);
  }

  public void start()
  {
    startTime = millis();
    flg = true;
  }

  public void drawSweat()
  {
    if (!(millis()>startTime+mTime) && flg == true) {
      println("sweat:"+count);
      count+=3;
      pushMatrix();
      translate(20, -300.0+count, 60.0);
      scale(0.5);
      image(img, 0.0, count);
      popMatrix();
    }
  }
}

