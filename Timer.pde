class Timer {
  private int count;
  private int addCount;
  private float time;
  private int mTime;

  private int startTime;
  private boolean flg = false;

  Timer(float _time) {//秒
    mTime = int(_time*1000);
    count = 0;
    addCount = 1;
  }

  Timer(float _time, int _add) {
    mTime = int(_time*1000);
    count = 0;
    addCount = _add;
  }
  
  void startTimer(){
     flg=true;
     startTime = millis();
  }

  boolean checkFlg() {
    return flg;
  }

  boolean checkTimer() {
    if (millis() < startTime+mTime) {
      count+=addCount;
      return true;
    } else {
      flg = false;
      count=0;
      return false;
    }
  }

  int getCount() {
    return count;
  }
}