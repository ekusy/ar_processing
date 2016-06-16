class Hello extends Object {
  PImage img;
  Timer timer;
  Hello() {
    super("Hello");
    super.setPosition(20.0, -220.0, 60.0);
    img = loadImage("./data/Hello.png");
    timer = new Timer(1.0);
  }
  
  public void start()
  {
    timer.startTimer();
  }

  public void Draw() {
    if (timer.checkFlg()) {  
      pushMatrix();
      rotateZ(radians(180.0));
      translate(pos.x,pos.y,pos.z);
      scale(1.0);
      image(img, 0.0, 0.0);
      popMatrix();
      timer.checkTimer();
    }
  }
}