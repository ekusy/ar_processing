class Timer {
  private int count;
  private int addCount;
  private float time;
  private int mTime;

  private int startTime;
  private boolean flg = false;

  Timer(float _time) {//秒
    mTime = int(_time*1000);
    startTime = millis();
    count = 0;
    addCount = 1;
    flg =true;
  }

  Timer(float _time, int _add) {
    mTime = int(_time*1000);
    startTime = millis();
    count = 0;
    addCount = _add;
    flg =true;
  }
  
  boolean CheckFlg(){
     return flg; 
  }

  boolean checkTimer() {
    if (millis() < startTime+mTime)
      return true;
    else
      flg = false;
      return false;
  }
}