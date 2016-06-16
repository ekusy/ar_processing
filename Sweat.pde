class Sweat extends Object{
  private PImage img;
  private Timer timer;

  Sweat() {
    super("Sweat");
    super.setPosition(20.0, -220.0, 60.0);
    img = loadImage("./data/sweat.png");
    //mTime = int(time*1000);
    timer = new Timer(0.8,3);
  }

  public void start()
  {
    timer.startTimer();
  }

  public void Draw()
  {
    if (timer.checkFlg()) {
      
      int count = timer.getCount();
      println("sweat:"+count);
      pushMatrix();
      rotateZ(radians(180.0));
      translate(pos.x,pos.y,pos.z);
      translate(0.0,count,0.0);
      scale(0.3);
      image(img, 0.0, count);
      popMatrix();
      timer.checkTimer();
    }
  }
}