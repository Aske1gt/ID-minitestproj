class Object{
  
  int x;
  int y;
  int w;
  int h;
  int xSpeed = 2;
  boolean ammoType;
  
  Object(){
    y = height/2;
    w = 20;
    h = 20;
     //rect(x, y, w, h); 
  }
  
  void run() {
    x = x + xSpeed;
    if (x >= width-w){
      x = x - xSpeed;
    }
  }
  
   void display() {
    background(0); 
     //stroke(0);
     rect(x, y, w, h);
  }
  
  void hitbox(){
     if (x < mouseX && mouseX < x + w && y < mouseY && mouseY < y + h) {
  println("HIT");
  for(int i=0; i<list.size(); i++){
    list.remove(i);
  }
}
  }
  
  public int getX(){return x;}
  public int setX(int x){return this.x = x;}
  
}