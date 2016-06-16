class Object{
  private String type;
  protected PVector pos;
  protected PVector rot;

  Object(){
    initialize();
  }
  
  Object(String _type){
    initialize();
    setType(_type);
  }
  
  Object(String _type,PVector _pos,PVector _rot){
    initialize();
    setType(_type);
    setPosition(_pos);
    setRotate(_rot);
  }
  
  private void initialize(){
   type = "noName";
   pos = new PVector(0.0,0.0,0.0);
   rot = new PVector(0.0,0.0,0.0);
  }
  
  String isType(){
   return type; 
  }
  
  protected void setType(String _typeName){
    type = _typeName;
  }
  
  public boolean isType(String _check){
    return type.equals(_check);
  }
  
  public void setPosition(float _x,float _y,float _z){
    pos.x=_x;
    pos.y=_y;
    pos.z=_z;
  }
  public void setPosition(PVector _pos){
   pos = _pos; 
  }
  
  
  public void setRotate(PVector _rot){
   rot = _rot; 
  }
  
  public void setRotate(float _x,float _y,float _z){
    rot.x=_x;
    rot.y=_y;
    rot.z=_z;
  }
  
  public PVector getPosition(){
   return pos; 
  }
  
  public PVector getRotate(){
   return rot; 
  }
  
  
  
}